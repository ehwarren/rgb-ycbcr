fid = fopen('../data/babe.dat');
tmp = fread(fid,'uint8');
k=1;
for h = 1:3
    for i = 1:1920
        for j = 1:1080 
            im_orig(j,i,h) = uint8(tmp(k));
            k=k+1;
        end
    end
end

fid = fopen('../data/output.dat');
tmp = fread(fid,'float');
k=1;
for h = 1:3
    for i = 1:1920
        for j = 1:1080 
            im(j,i,h) = uint8(tmp(k));
            k=k+1;
        end
    end
end
fid = fopen('../data/output_int_ARM_car.dat');
tmp = fread(fid,'int32');
k=1;
for h = 1:3
    for i = 1:2800
        for j = 1:1575 
            im_int_car(j,i,h) = uint8(tmp(k));
            k=k+1;
        end
    end
end
fid = fopen('../data/output_int_ARM_optimized.dat');
tmp = fread(fid,'uint8');
k=1;
for h = 1:3
    for i = 1:1920
        for j = 1:1080
			if(h > 1)
				if(mod(j,4)==0)
                    k=k+1;
                end
                if(k > 3110400)
                      k = 3110400;
                end
				im_int(j,i,h) = uint8(tmp(k));
            else
                im_int(j,i,h) = uint8(tmp(k));
                k=k+1;
            end
        end
    end
end
imwrite(im_int,'../data/arm_int_ycc.jpg');
imwrite(im_int_car,'../data/arm_int_car_ycc.jpg');
rgb_im = ycbcr2rgb(im);
subplot(2,2,2), subimage(rgb_im);
title('Converted BACK to RGB');
subplot(2,2,1),imshow(im);
title('TO YCbCr (FLOAT)');
subplot(2,2,3),imshow(im_int);
title('TO YCbCr(INTEGER ARM)');
rgb_im_int = ycbcr2rgb(im_int);
rgb_im_int_car = ycbcr2rgb(im_int_car);
imwrite(rgb_im_int,'../data/arm_int_rgb.jpg');
imwrite(rgb_im_int_car,'../data/arm_int_car_rgb.jpg');
subplot(2,2,4),imshow(rgb_im_int);
title('Converted BACK to RGB (INTEGER ARM)');
