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
rgb_im = ycbcr2rgb(im);
subplot(3,1,1), subimage(rgb_im);
title('Converted BACK to RGB');
subplot(3,1,2),imshow(im);
title('TO YCbCr');
subplot(3,1,3),imshow(im_orig);
title('Original');