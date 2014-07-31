#include<stdio.h>
#include<sys/time.h>

#define imWidth 1920
#define imHeight 1080
#define scaleFactor 1

#define DEBUG 0

void loadNextRGB();
void writeNextYCbCr();
void loadFile();
void writeFile();
void checkThresholds();

char imageRGB[imWidth*imHeight*3]; 	//each pixel has one byte per color channel, and 3 color channels
int imageYcBcR[imWidth*imHeight*3];	//holder for output image

int r,g,b;				//Initial RGB image will be stored as byte, no need for floating point
int y, cr, cb;				//Storage for current y,cr,and cb values
int curByte = 0;			//Counter to know which byte to load from image file
int i, j;

int main(int argc, char *argv[]){
  struct timeval start, end;
	printf("Loading file: %s \n", argv[1]);
	loadFile(argv[1]);		//Load file into imageRGB array;
  gettimeofday(&start, NULL);
	for(i=0; i<imWidth; i++){
		for ( j=0; j<imHeight; j++){
			loadNextRGB();
			y = (512 + 8 * r + 16* g + 3 * b)/32; 	
			cb = (cb + (4096 - 6 * r - 9 * g + 14 * b)/32)/2;
			cr = (cr + (4096 + 14 * r - 11 * g - b*2)/32)/2;
			checkThresholds();
			writeNextYCbCr();
		}
		if(DEBUG){
			printf("R: %i, G: %i, B: %i \n", r,g,b);
			printf("Y: %i, Cb: %i, Cr: %i \n", y, cb, cr);
		}
	}
  gettimeofday(&end, NULL);
	long long time = (end.tv_sec * (unsigned int) 1e6 + end.tv_usec) -  (start.tv_sec * (unsigned int)1e6 + start.tv_usec);
  writeFile(argv[2]);		//Write converted image to binary file
	printf("Wrote Output file %s succesfully\n",argv[2]);
  printf("Main loops took: %i \n\n\n\n",time);
  
}

//Check to ensure our y cb cr values are not out of thresholds
//y (16 -> 235)
//cb (16 -> 240)
//cr (16 -> 240)
void checkThresholds(){
	if(y < 16)
		y = 16;
	else if ( y > 235)
		y = 235;
	if(cb < 16)
		cb = 16;
	else if ( cb > 240)
		cb = 240;
	if(cr < 16)
		cr = 16;
	else if ( cr > 240)
		cr = 240;
}

//Load the binary file into our image array
void loadFile(char *fname){
	FILE *fPtr = fopen(fname,"rb");	//Open file for reading, binary format
	if(!fPtr){
		printf("Failed to open image binary file");
	}
	fread(imageRGB,sizeof(char),sizeof(imageRGB),fPtr);
	fclose(fPtr);
}

//write the output binary file
void writeFile(char *fname){
	int k = 0;
	char output[sizeof(imageRGB)/2];
	for( k=0; k<sizeof(imageRGB)/2; k++ ){
		output[k] = (char)imageYcBcR[k];
	}
		
	FILE *fPtr = fopen(fname,"wb");	//Open file for writing, binary format
	if(!fPtr){
		printf("Failed to open output image binary file");
	}
	fwrite(output,sizeof(char),sizeof(imageRGB)/2,fPtr);
	fclose(fPtr);
}

void writeNextYCbCr(){
	imageYcBcR[curByte-1] = y;
	if ( j % 4 == 0 ){
		imageYcBcR[(curByte-1)/4+(imWidth*imHeight)] = cb;
		//cb = 0;
		imageYcBcR[(curByte-1)/4+(imWidth*imHeight)+((imWidth*imHeight)/4)] = cr;
		//cr = 0;
	}
}
	

//Assuming image is stored in the following format
//R0 R1 RN G0 G1 GN B0 B1 BN ... where each is one byte in length
//Loads next RGB values and increments byte counter
void loadNextRGB(){
	r = imageRGB[curByte]*scaleFactor;
	g = imageRGB[curByte+(imWidth*imHeight)]*scaleFactor;
	b = imageRGB[curByte+(imWidth*imHeight*2)]*scaleFactor;
	curByte++;
}
