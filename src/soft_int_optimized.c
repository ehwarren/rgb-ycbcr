#include<stdio.h>

#define imWidth 1920
#define imHeight 1080
#define scaleFactor 1

#define DEBUG 0

void loadFile();
void writeFile();

char imageRGB[imWidth*imHeight*3];
int imageYcBcR[imWidth*imHeight*3];

int main(int argc,char *argv[]){

	int r,g,b;
	int y, cr, cb;				

	int i,j;
	int curByte=0;
	loadFile(argv[1]);
	for(i=0; i<imWidth; i++){
		for ( j=0; j<imHeight; j++){
			//Load RGB Values
			r = imageRGB[curByte]*scaleFactor;
			g = imageRGB[curByte+(imWidth*imHeight)]*scaleFactor;
			b = imageRGB[curByte+(imWidth*imHeight*2)]*scaleFactor;
			curByte++;
			//Perform Conversion
			y = (512 + 8 * r + 16* g + 3 * b)/32; 	
			cb = (cb + (4096 - 6 * r - 9 * g + 14 * b)/32)/2;
			cr = (cr + (4096 + 14 * r - 11 * g - b*2)/32)/2;
			//Check Thresholds
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
			//Write next YcBcR Value
			imageYcBcR[curByte-1] = y;
			if ( j % 4 == 0 ){
				imageYcBcR[(curByte-1)/4+(imWidth*imHeight)] = cb;
				imageYcBcR[(curByte-1)/4+(imWidth*imHeight)+((imWidth*imHeight)/4)] = cr;
			}
		}
	}
	writeFile(argv[2]);
}
//Load the binary file into our image array
void loadFile(char *fname){
        FILE *fPtr = fopen(fname,"rb"); //Open file for reading, binary format
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

        FILE *fPtr = fopen(fname,"wb"); //Open file for writing, binary format
        if(!fPtr){
                printf("Failed to open output image binary file");
        }
        fwrite(output,sizeof(char),sizeof(imageRGB)/2,fPtr);
        fclose(fPtr);
}

