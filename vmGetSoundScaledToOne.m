function [ S ] = vmGetSoundScaledToOne(A)
%vmGetSoundScaledToOne Scales to -1,1 so that we can play as audio file
%   make it audible
%   (c) Myers Abraham Davis (Abe Davis), MIT
S = A;

maxsx = max(S);
minsx = min(S);
if(maxsx~=1.0 || minsx ~= 0)
    range = maxsx-minsx;
    S = 2*S/range;
    newmx = max(S);
    offset = newmx-1.0;
    S = S-offset;
end
end