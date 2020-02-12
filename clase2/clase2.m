clc
close all
clear

% % (1.)  Utilidad de la ops aritméticas - ejs adicionales
% Bright.jpg, d_GSI.jpg, d_GSI2.gif

imagen1 = imread('Bright.jpg');
imagen2 = imread('d_GSI.jpg');
imagen3 = imread('d_GSI2.gif');

imagen1 = rgb2gray(imagen1);
imagen2 = rgb2gray(imagen2);

escalar = 1.5;
imagen1 = imagen1 * escalar;
imagen2 = imagen2 * escalar;
imagen3 = imagen3 * escalar;

figure,subplot(1,3,1),imshow(imagen1);
       subplot(1,3,2),imshow(imagen2);
       subplot(1,3,3),imshow(imagen3);

% (2.) Continuación - umbralización

imagen = imread('DeerManagement_IR.jpg');
imagen = rgb2gray(imagen);
umbral = 98;
imBW = 0*imagen;
imBW(imagen >= umbral) = 255;

figure,subplot(2,1,1),imshow(imagen),colorbar;
       subplot(2,1,2),imshow(imBW),colorbar;

% (3.) Resta y multiplicación para detectar movimiento
imagen1 = imread('stuffs_1.gif');
imagen2 = imread('stuffs_2.gif');
imagen3 = imagen2-imagen1;

umbral = 26;
imBW = 0*imagen1;
imBW(imagen1>= umbral) = 255;


figure,subplot(1,5,1),imshow(imagen1);
       subplot(1,5,2),imshow(imagen2);
       subplot(1,5,3),imshow(imagen3);
       subplot(1,5,4),imshow(imBW);
       subplot(1,5,5),colormap('gray'),imagesc(imagen3);

