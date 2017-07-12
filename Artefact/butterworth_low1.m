
% butterworth low pass filter
function [out, H] = butterworth_low1(im,fc,n)
[co,ro] = size(im);
cx = round(co/2); % find the center of the image
cy = round (ro/2);
imf=fftshift(fft2(im));
H=zeros(co,ro);
for i = 1 : co
    for j =1 : ro
        d = (i-cx).^2 + (j-cy).^ 2;
        H(i,j) = 1/(1+((d/fc/fc).^(2*n)));
    end;
end;
outf = imf .* H;
out = abs(ifft2(outf));
