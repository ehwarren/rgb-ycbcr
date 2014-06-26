#include<stdio.h>

#define imWidth 1920
#define imHeight 1080

void loadNextRGB();
void writeNextYCbCr();
void loadFile();
void writeFile();
void checkThresholds();

char imageRGB[imWidth*imHeight*3]; 	//each pixel has one byte per color channel, and 3 color channels
int imageYcBcR[imWidth*imHeight*3];	//holder for output image

char r,g,b;				//Initial RGB image will be stored as byte, no need for floating point
int y, cr, cb;				//Storage for current y,cr,and cb values
int curByte = 0;			//Counter to know which byte to load from image file
int i, j;

//TODO:: Get rid of all these fucking global variables.

int main(int argc, char *argv[]){
	printf("Loading file: %s \n", argv[1]);
	loadFile(argv[1]);		//Load file into imageRGB array;
	for(i=0; i<imWidth; i++){
		for ( j=0; j<imHeight; j++){
			loadNextRGB();
			//scaling factor will be 2^-4
			//y = 16.0 + 0.257 * r + 0.504 * g + 0.098 * b;	
			y = 256 + 4 * r + 8 * g + 2 * b; 
			//cb = 128.0 - 0.148 * r - 0.291* g + 0.439 * b;
			cb = 2048 - 2 * r - 5 * g + 7 * b;
			//cr = 128.0 + 0.439 * r - 0.368 * g - 0.071 * b;
			cr = 2048 + 7 * r - 6 * g - b;
			checkThresholds();
			writeNextYCbCr();
		}
	}
	writeFile(argv[2]);		//Write converted image to binary file
	printf("Wrote Output file %s succesfully\n",argv[2]);
}

//Check to ensure our y cb cr values are not out of thresholds
//y (16 -> 235)
//cb (16 -> 240)
//cr (16 -> 240)
void checkThresholds(){
	if(y < 256)
		y = 256;
	else if ( y > 3760)
		y = 3760;
	if(cb < 256)
		cb = 256;
	else if ( cb > 3840)
		cb = 3840;
	if(cr < 256)
		cr = 256;
	else if ( cr > 3840)
		cr = 3840;
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
	FILE *fPtr = fopen(fname,"wb");	//Open file for writing, binary format
	if(!fPtr){
		printf("Failed to open output image binary file");
	}
	fwrite(imageYcBcR,sizeof(char),sizeof(imageRGB),fPtr);
	fclose(fPtr);
}

//write next pixel to output image
void writeNextYCbCr(){
	imageYcBcR[curByte-1] = y;
	imageYcBcR[curByte-1+(imWidth*imHeight)] = cb;
	imageYcBcR[curByte-1+(imWidth*imHeight*2)] = cr;
}
	

//Assuming image is stored in the following format
//R0 R1 RN G0 G1 GN B0 B1 BN ... where each is one byte in length
//Loads next RGB values and increments byte counter
void loadNextRGB(){
	r = imageRGB[curByte];
	g = imageRGB[curByte+(imWidth*imHeight)];
	b = imageRGB[curByte+(imWidth*imHeight*2)];
	curByte++;
}
