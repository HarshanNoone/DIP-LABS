
clc
clear all
close all

% Task - 1.0
I = imread('map.png');
figure, imshow(I)
title('Original RGB Image');
Igray = rgb2gray(I);
figure, imshow(Igray)
title('Gray Scale Image');




% Task - 1.1
Ir =I(1:end,1:end,1);
figure,imshow(Ir)
title('Red Component');
Ig =I(1:end,1:end,2);
figure,imshow(Ig)
title('Green Component');
Ib =I(1:end,1:end,3);
figure,imshow(Ib)
title('Blue Component');

% Task - 1.2
IR = I;
IR(:,:,2:3) = 0;
figure,imshow(IR)
title('Red Colour Extracted');
IG = I;
IG(:,:,1) = 0;
IG(:,:,3) = 0;
figure,imshow(IG)
title('Green Colour Extracted');
IB = I;
IB(:,:,1:2) = 0;
figure,imshow(IB)
title('Blue Colour Extracted');







