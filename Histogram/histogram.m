clc
clear all
close all

inputImage = imread('new.jpg');

if size(inputImage, 3) == 3
    grayImage = rgb2gray(inputImage);
else
    grayImage = inputImage;
end


equalizedImage = histeq(grayImage);


figure;
subplot(2, 2, 1);
imshow(inputImage);
title('Original Image');

subplot(2, 2, 2);
imshow(grayImage);
title('Grayscale Image');

subplot(2, 2, 3);
imhist(grayImage);
title('Histogram of Grayscale Image');

subplot(2, 2, 4);
imshow(equalizedImage);
title('Histogram Equalized Image');


figure;
imhist(equalizedImage);
title('Histogram of Equalized Image');
