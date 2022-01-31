% script m-file: mymax.m
%
% This program is meant to find the max. val. of a given vector. It also
% finds an index corresponding to the max. element.
%
% input:    x = a vector
% outputs:  M = the max value
%          iM = index corresp. to M
%

x = input('Enter a vector: ');
M = x(1);
iM = 1;
for j = 2:length(x)
    if M < x(j)
        M = x(j);
        iM = j;
    end
end

