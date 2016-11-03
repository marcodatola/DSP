function [data, count] = readbuoydata(datafile)
fid = fopen(datafile,'r'); %open filename for read returning a scalar file identifier
tline = fgetl(fid) % stores content of first line in tline var, moves fptr forward
tline = fgetl(fid) % stores content of second line in tline var, moves fptr forward
[A,count] = fscanf(fid,'%d %d %d %d %d %f %f %d %f %f',[10 inf]); %fills up a matrix of 10 columns and as many rows (inf) are required until EOF is reached
%fill data struct
data.date = datenum([A(1:5,:); zeros(1,size(A,2))]')'; %converts an array of 6 elements [YMDHMS]', where M,S=0 into a serial date number
data.Hs = A(6,:); % significant wave height, 6th element per row
data.Tp = A(7,:); % peak period, 7th element per row
data.Dp = A(8,:); % peak period direction, 8th element per row
data.Ta = A(9,:); % average period 9th element per row
data.SST = A(10,:); % sea surface temperature, 10th element per row
fclose(fid); %closes file 