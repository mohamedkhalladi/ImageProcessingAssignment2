img = imread('Q2.tif');
subplot(1,3,1);
imshow(img);
title('original');
 
 % Mean filter
% h = fspecial('average', hsize) returns an averaging filter h of size hsize. 
% The argument hsize can be a vector specifying the number of rows and columns 
% in h, or it can be a scalar, in which case h is a square matrix. The default 
% value for hsize is [3 3].
h = fspecial('Average',[3,3]);% Mean filter
img1 = imfilter(img, h);
subplot(1,3,2);
imshow(img1);
title('mean filter');
 
 % Median filter
% B = medfilt2(A) performs median filtering of the matrix A using the default
% 3-by-3 neighborhood.
img2 = medfilt2(img);
subplot(1,3,3);
imshow(img2);
title('median filter')