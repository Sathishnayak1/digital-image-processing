
img = imread('images.jpg');  


RedImage = img;
RedImage(:,:,2) = 0;  
RedImage(:,:,3) = 0; 
GreenImage = img;
GreenImage(:,:,1) = 0; 
GreenImage(:,:,3) = 0; 
BlueImage = img;
BlueImage(:,:,1) = 0; 
BlueImage(:,:,2) = 0; 
GrayImage = rgb2gray(img);
figure;
subplot(2,3,1), imshow(img), title('Original Image');
subplot(2,3,2), imshow(RedImage), title('Red Channel');
subplot(2,3,3), imshow(GreenImage), title('Green Channel');
subplot(2,3,4), imshow(BlueImage), title('Blue Channel');
subplot(2,3,5), imshow(GrayImage), title('Grayscale Image');
