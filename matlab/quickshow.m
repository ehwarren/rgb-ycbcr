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