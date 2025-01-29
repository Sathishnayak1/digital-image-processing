clc
clear all
close all
img = imread('Lenna_(test_image).png');  
img = rgb2gray(img);  


img = double(img);  


num_planes = 8;


figure;

for i = 1:num_planes
    
    bit_plane = bitget(img, num_planes - i + 1);  
    
    
    subplot(2, 4, i);
    imshow(bit_plane);
    title(['Bit-plane ', num2str(i)]);
end
