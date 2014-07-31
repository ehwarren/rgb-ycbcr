#include<stdio.h>

#define imWidth 1920
#define imHeight 1080
#define scaleFactor 1

#define DEBUG 0

void loadFile();
void writeFile();

int main(int argc, char *argv[]){
	
	char imageRGB[imWidth*imHeight*3]; 
	
	int imageYcBcR[(imWidth*imHeight*3)/2];
	int r,g,b;
	int y, cr, cb;				
	int curByte = 0;
	int i, j;

	printf("Loading file: %s \n", argv[1]);

	FILE *fPtr = fopen(argv[1],"rb");	//Open file for reading, binary format
	if(!fPtr){
		printf("SIIIIT");
	}
	fread(imageRGB,sizeof(char),sizeof(imageRGB),fPtr);
	fclose(fPtr);
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
				cb = 0;
				imageYcBcR[(curByte-1)/4+(imWidth*imHeight)+((imWidth*imHeight)/4)] = cr;
				cr = 0;
			}
		}
	}
	int k = 0;
        char output[sizeof(imageRGB)/2];
        for( k=0; k<(sizeof(imageRGB)/2); k++ ){
                output[k] = (char)imageYcBcR[k];
        }

        FILE *fPtrr = fopen(argv[2],"wb"); //Open file for writing, binary format
        fwrite(output,sizeof(char),sizeof(imageRGB)/2,fPtrr);
        fclose(fPtrr);
	printf("Wrote Output file %s succesfully\n",argv[2]);
}

