%% Prog 10: Morphological Processing
clc; clear all; close all;

A=(im2double(imread('FingurePrint.bmp')));
figure;
imshow(A,[]);
title('Original Image');

%% Structuring element
B = ones(3,3);

%% Erode A
I1 = my_erode(A,B);
figure; imshow(I1,[]);
title('Erode A');

%% Open A = Dilate(Erode A)
I2 = my_dilation(I1,B);
figure; imshow(I2,[]);
title('Open A');

%% Dilate Opening = Dilate(Open A)
I3 = my_dilation(I2,B);
figure; imshow(I3,[]);
title('Dilate(Open A)');

%% Closing of opening
I4 = my_erode(I3,B);
figure; imshow(I4,[]);
title('Closing of opening');








