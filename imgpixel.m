clc
clear all
close all
ii=imread('images.jpg');
imshow(ii);
pixel_value = ii(1,3);
disp(pixel_value);

red_channel = ii(:,:,1);   % Red channel (first dimension)
green_channel = ii(:,:,2); % Green channel (second dimension)
blue_channel = ii(:,:,3);  % Blue channel (third dimension)

red_image = cat(3, red_channel, zeros(size(red_channel), 'uint8'), zeros(size(red_channel), 'uint8'));

subplot(1,4,1), imshow(ii), title('Original Image');
subplot(1,4,2), imshow(red_image), title('Red Channel');

igray= rgb2gray(ii);
