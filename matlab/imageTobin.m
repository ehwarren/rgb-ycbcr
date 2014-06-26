function imageTobin( input_filename, output_filename )
    original = imread(input_filename);
    fid = fopen(output_filename, 'w');
    fwrite(fid,original,'int8');
end

