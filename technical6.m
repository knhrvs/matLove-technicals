% 
% %KEN HARVEY A. ORESCA
% 
% Image = [201 195 203 203 199 200 204 190 198 203;
%  201 204 209 197 210 202 205 195 202 199;
%  205 198 46 60 53 37 50 51 194 205;
%  208 203 54 50 51 50 55 48 193 194;
%  200 193 50 56 42 53 55 49 196 211;
%  200 198 203 49 51 60 51 205 207 198;
%  205 196 202 53 52 34 46 202 199 193;
%  199 202 194 47 51 55 48 191 190 197;
%  194 206 198 212 195 196 204 204 199 200;
%  201 189 203 200 191 196 207 203 193 204];
% 
% rob_x= [1 0 0;0 -1 0;0 0 0];
% rob_y= [0 1 0;-1 0 0;0 0 0];
% Image_rob_x=imfilter(rob_x,Image);
% Image_rob_y=imfilter(rob_y,Image);
% result_rob=sqrt(Image_rob_x.^2+Image_rob_y.^2);
% subplot(3,2,1);imshow(result_rob/255);title("Robert Filter");
% sob_x=[-1 0 1;-2 0 2;-1 0 1];
% sob_y=[-1 -2 1;0 0 0;1 2 1];
% mat_sob_x=imfilter(sob_x,Image);
% mat_sob_y=imfilter(sob_y,Image);
% result_sob=sqrt(mat_sob_x.^2+mat_sob_y.^2);
% subplot(3,2,2);imshow(result_sob/255);title("Sobel Filter");
% pre_x=[-1 0 1;-1 0 1;-1 0 1];
% pre_y=[-1 -1 -1;0 0 0;1 1 1];
% mat_pre_x=imfilter(pre_x,Image);
% mat_pre_y=imfilter(pre_y,Image);
% result_pre=sqrt(mat_pre_x.^2+mat_pre_y.^2);
% subplot(3,2,3);imshow(result_pre/255);title("Prewitt Filter");
% lap_x=[0 0 0;1 -2 1;0 0 0];
% lap_y=[0 1 0;0 -2 0;0 1 0];
% mat_lap_x=imfilter(lap_x,Image);
% mat_lap_y=imfilter(lap_y,Image);
% result_lap=sqrt(mat_lap_x.^2+mat_lap_y.^2);
% subplot(3,2,4);imshow(result_lap/255);title("Laplacian Filter");


%KEN HARVEY A. ORESCA
Original_Image = imread('cameraman.tif');
saltnpepper = imnoise(Original_Image,'salt & pepper',0.1);
gaussian = imnoise(Original_Image,'gaussian',0,0.02);

figure
subplot(3,3,1);
imshow(Original_Image);
title("Original Image");
subplot(3,3,2);
imshow(saltnpepper);
title("Salt and pepper");
Robert_SnP = edge(saltnpepper,'roberts',0.1);
subplot(3,3,3);
imshow(Robert_SnP);
title("Robert");
Sobel_SnP = edge(saltnpepper,'sobel',0.1);
subplot(3,3,4);
imshow(Sobel_SnP);
title("Sobel");
Prewitt_SnP = edge(saltnpepper,'prewitt',0.1);
subplot(3,3,5);
imshow(Prewitt_SnP);
title("Prewitt");
Laplacian =fspecial('laplacian',0);
Laplacian_Snp = filter2(Laplacian,saltnpepper);
subplot(3,3,6);
imshow(Laplacian_Snp);
title("Laplacian");
Zero_Crossing_Snp = edge(saltnpepper,'zerocross');
subplot(3,3,7);
imshow(Zero_Crossing_Snp);
title("Zerocrossing");
Meri_Hildreth_Snp = edge(saltnpepper,'zerocross',Laplacian,0.3);
subplot(3,3,8);
imshow(Meri_Hildreth_Snp);
title("Marr-Hildreth");
%Gaussian Noise
figure
subplot(3,3,1);
imshow(Original_Image);
title("Original Image");
subplot(3,3,2);
imshow(gaussian);
title("Gaussian"); 
Robert_G = edge(gaussian,'roberts',0.1);
subplot(3,3,3);
imshow(Robert_G);
title("Robert");
Sobel_G = edge(gaussian,'sobel',0.1);
subplot(3,3,4);
imshow(Sobel_G);
title("Sobel");
Prewitt_G = edge(gaussian,'prewitt',0.1);
subplot(3,3,5);
imshow(Prewitt_G);
title("Prewitt");
Laplacian_G = filter2(Laplacian,gaussian);
subplot(3,3,6);
imshow(Laplacian_G);
title("Laplacian");
Zero_Crossing_G = edge(gaussian,'zerocross');
subplot(3,3,7);
imshow(Zero_Crossing_G);
title("Zerocrossing");
MEri_Hildreth_G = edge(gaussian,'zerocross',Laplacian,0.3);
subplot(3,3,8);
imshow(MEri_Hildreth_G);
title("Marr-Hildreth");


