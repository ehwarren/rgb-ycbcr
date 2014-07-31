#include<stdio.h>
#include<sys/time.h>

#define imWidth 1920
#define imHeight 1080
#define scaleFactor 1

#define DEBUG 0

void loadFile();
void writeFile();

char imageRGB[imWidth*imHeight*3];
int imageYcBcR[imWidth*imHeight*3];

int main(int argc,char *argv[]){

    struct timeval start, end;
     
	int r,g,b;
	int y, cr, cb;
	int rgb, ycbcr = 16777215;	//ycbcr loaded with 0x00FFFFFF for testing (hardware solution not actually interfaced)
	//rgb:		0b0000 000X RRRR RRRR GGGG GGGG BBBB BBBB
	//ycbcr: 	0b0000 0000 YYYY YYYY CbCbCbCb CbCbCbCb CrCrCrCr CrCrCrCr
	int i,j;
	int curByte=0;
	loadFile(argv[1]);

   gettimeofday(&start, NULL);
		for ( j=((imWidth*imHeight)>>2); j!=0; j--){
			//Load RGB Values
			r = imageRGB[curByte]*scaleFactor;
			g = imageRGB[curByte+(imWidth*imHeight)]*scaleFactor;
			b = imageRGB[curByte+(imWidth*imHeight*2)]*scaleFactor;
			curByte++;
			//Pack the rgb values into a 32 bit number
			rgb = (((char) r) << 16) & (((char) g) << 8) & (char) b;
			//Perform Hardware Conversion (ycbcr would get a result value)
			asm("nop");
			//Unpack luminance value
			y = ycbcr >> 16;
			//Write next YcBcR Value
			imageYcBcR[curByte-1] = y;
			
			//Load RGB Values
			r = imageRGB[curByte]*scaleFactor;
			g = imageRGB[curByte+(imWidth*imHeight)]*scaleFactor;
			b = imageRGB[curByte+(imWidth*imHeight*2)]*scaleFactor;
			curByte++;
			//Pack the rgb values into a 32 bit number
			rgb = (((char) r) << 16) & (((char) g) << 8) & (char) b;
			//Perform Hardware Conversion (ycbcr would get a result value)
			asm("nop");
			//Unpack luminance value
			y = ycbcr >> 16;
			//Write next YcBcR Value
			imageYcBcR[curByte-1] = y;

			
			//Load RGB Values
			r = imageRGB[curByte]*scaleFactor;
			g = imageRGB[curByte+(imWidth*imHeight)]*scaleFactor;
			b = imageRGB[curByte+(imWidth*imHeight*2)]*scaleFactor;
			curByte++;
			//Pack the rgb values into a 32 bit number
			rgb = (((char) r) << 16) & (((char) g) << 8) & (char) b;
			//Perform Hardware Conversion (ycbcr would get a result value)
			asm("nop");
			//Unpack luminance value
			y = ycbcr >> 16;
			//Write next YcBcR Value
			imageYcBcR[curByte-1] = y;

			//Load RGB Values
			r = imageRGB[curByte]*scaleFactor;
			g = imageRGB[curByte+(imWidth*imHeight)]*scaleFactor;
			b = imageRGB[curByte+(imWidth*imHeight*2)]*scaleFactor;
			curByte++;
			//Pack the rgb values into a 32 bit number, bit 24 is high so the hardware returns the averaged value
			rgb = (1 << 24) & (((char) r) << 16) & (((char) g) << 8) & (char) b;
			//Perform Hardware Conversion (ycbcr would get a result value)
			asm("nop");
			//Unpack luminance value
			y = ycbcr >> 16;
			cb = (ycbcr & 0x0000FF00) >> 8;
			cr = (ycbcr & 0x000000FF);
			//Write next YcBcR Value
			imageYcBcR[curByte-1] = y;

			//Write next YcBcR Value
			imageYcBcR[curByte-1] = y;
			imageYcBcR[((curByte-1)>>2)+(imWidth*imHeight)] = cb;
			imageYcBcR[((curByte-1)>>2)+(imWidth*imHeight)+((imWidth*imHeight)>>2)] = cr;
		}
    gettimeofday(&end, NULL);
    long time = (end.tv_sec * (unsigned int) 1e6 + end.tv_usec) -  (start.tv_sec * (unsigned int)1e6 + start.tv_usec);
    printf("Main loops took: %i us\n\n\n\n",time);
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

