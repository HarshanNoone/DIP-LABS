clc; 
clear; 
close 
all;
n = imread('map.jpg');
m = rgb2gray(n);
[r c p]=size(m);
if (p==3)
 error('Input image should be Grayscale')
else
 
[plane1,plane2,plane3,plane4,plane5,plane6,plane7,plane8]=bitplaneane_code(m);
end
figure;
 subplot(3,3,1);imshow(plane1);title('1st plane');
 subplot(3,3,2);imshow(plane2);title('2nd plane');
 subplot(3,3,3);imshow(plane3);title('3rd plane');
 subplot(3,3,4);imshow(plane4);title('4th plane');
 subplot(3,3,5);imshow(plane5);title('5th plane');
 subplot(3,3,6);imshow(plane6);title('6th plane');
 subplot(3,3,7);imshow(plane7);title('7th plane');
 subplot(3,3,8);imshow(plane8);title('8th plane')
 
rec=plane1+plane2*2+plane3*4+plane4*8+plane5*16+plane6*32+plane7*64+plane8*128;
 subplot(3,3,9);imshow(uint8(rec));title('Rec Img')
function [plane1 plane2 plane3 plane4 plane5 plane6 plane7 plane8]=bitplaneane_code(img)
[row col]=size(img);
n=zeros(row,col,8);
for k=1:8
 for i=1:row
 for j=1:col
 n(i,j,k)=bitget(img(i,j),k);
 end
 end
end
plane1=n(:,:,1);
plane2=n(:,:,2);
plane3=n(:,:,3);
plane4=n(:,:,4);
plane5=n(:,:,5);
plane6=n(:,:,6);
plane7=n(:,:,7);
plane8=n(:,:,8);
end