%
img = imread('Q2.tif');
subplot(2, 2, 1);
imshow(img);
title('original');
 
%
h = fspecial('laplacian', 0.2);
img1 = imfilter(img, h);

 
%
w = [-1, -1, -1; -1, 8, -1; -1, -1, -1];
%'replicate', the image size is extended by copying the value of the outer boundary
img2 = imfilter(img, w, 'replicate');
subplot(2, 2, 2);
imshow(img2);
title('mask');
 
%
img3 = img + img1;
subplot(2, 2, 3);
imshow(img3);
title('Image sharpened 2');
 
%
img4 = img + img2;
subplot(2, 2, 4);
imshow(img4);
title('Image sharpened 2');