clc;
clear all; close all;

A = imread("human.jpg");

figure(1); imshow(A);

faceDetector = vision.CascadeObjectDetector();

B = step(faceDetector, A);
C = insertShape(A,"Rectangle",B);
figure(2); imshow(C);

%The cascade object detector uses the Viola-Jones algorithm to detect people’s
% faces, noses, eyes, mouth, or upper body. You can also use the Image Labeler
% to train a custom classifier to use with this System object. For details on
% how the function works, see Get Started with Cascade Object Detector.