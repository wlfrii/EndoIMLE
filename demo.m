%% EndoIMLE Demo
% INSTRUTIONS see README.md file.
% Author: Longfei Wang
clear
close all

% Read an image
image = imread('./test_data/test_01.bmp');
[height, width, ~] = size(image);
distance = 60;
fov = deg2rad(90);
tc = 4.05;
ts = 7;
obj = EndoIMLE(width, height, distance, fov, tc, ts);
enhanced_image = obj.enhanceLeftImage(image);
figure;imshow([im2double(image), enhanced_image]);

% Use above 'obj' to process other images with save parameters, do follows.
image = imread('./test_data/test_02.bmp');
enhanced_image = obj.enhanceLeftImage(image);
figure;imshow([im2double(image), enhanced_image]);

% Use above 'obj' to process other images with different image size, do follows
image = imread('./test_data/test_03.bmp');
obj.reset('width',size(image,2), 'height', size(image,1));
enhanced_image = obj.enhanceLeftImage(image);
figure;imshow([im2double(image), enhanced_image]);