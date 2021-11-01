% img1 = [8 17 4 10 15 12;
%  10 12 15 7 3 10;
%  15 10 50 5 3 12;
%  4 8 11 4 1 8;
%  16 7 4 3 0 7;
%  16 24 19 3 20 10;];
% img2= [1 1 2 5 3 1;
%  3 20 5 6 4 6;
%  4 6 4 20 2 2;
%  4 3 3 5 1 5;
%  6 5 20 2 20 2;
%  6 3 1 4 1 2;];
% img3 = [7 8 11 12 13 9;
%  8 14 0 9 7 10;
%  11 23 10 14 1 8;
%  14 7 11 8 9 11;
%  13 13 18 10 7 12;
%  9 11 14 12 13 10;] ;
% 
% Answer 1
% medpic1 = medfilt2(img1,[3,3])
% medpic2 = medfilt2(img2,[3,3])
% medpic3= medfilt2(img3,[3,3])
% 
% subplot(2,3,1)
% imshow(mat2gray(img1))
% title("Image 1")
% 
% subplot(2,3,4)
% imshow(mat2gray(medpic1))
% title("Median of Image 1")
% 
% subplot(2,3,2)
% imshow(mat2gray(img2))
% title("Image 2")
% 
% subplot(2,3,5)
% imshow(mat2gray(medpic2))
% title("Median of Image 2")
% 
% subplot(2,3,3)
% imshow(mat2gray(img3))
% title("Image 3")
% 
% subplot(2,3,6)  
% imshow(mat2gray(medpic3))
% title("Median of Image 3")
% 
% Answer 2
% avg= fspecial('average');
% avg1 = filter2(avg,img1)
% avg2 =filter2(avg,img2)
% avg3= filter2(avg,img3)
% subplot(2,3,1)
% imshow(mat2gray(img1))
% title("Image 1")
% subplot(2,3,4)
% imshow(mat2gray(avg1))
% title("Average of Image 1")
% subplot(2,3,2)
% imshow(mat2gray(img2))
% title("Image 2")
% subplot(2,3,5)
% imshow(mat2gray(avg2))
% title("Average of Image 2")
% subplot(2,3,3)
% imshow(mat2gray(img3))
% title("Image 3")
% subplot(2,3,6)
% imshow(mat2gray(avg3))
% title("Average of Image 3")
% 
% [f,cmap]= imread('flowers.tif'); 
% fg = rgb2gray(cmap);
% f = im2uint8(f(30:285, 60:315));
% sp = imnoise(f, 'salt & pepper', 0.05);
% avg= fspecial('average');
% 
% imgavg = filter2(avg,sp);
% med = medfilt2(sp,[3,3]);
% 
% subplot(2,3,1)
% imshow(f,cmap)
% title("Original")
% 
% subplot(2,3,2)
% imshow(f)
% title("With Commands")
% 
% subplot(2,3,3)
% imshow(sp)
% title("Salt & Pepper")
% 
% subplot(2,3,4)
% imshow(mat2gray(imgavg))
% title("Average")
% 
% subplot(2,3,5)
% imshow(mat2gray(med))
% title("Median")
% 
% subplot(2,3,6)
% imshow(mat2gray(outlier(sp, 0.05)))
% title("Outlier")
% 
% % outlier func
% function res = outlier(im, d)
%     f=[0.125 0.125 0.125; 0.125 0 0.125; 0.125 0.125 0.125];
%     imd=im2double(im);
%     imf=filter2(f,imd);
%     r=abs(imd-imf)-d>0;
%     res=im2uint8(r.*imf+(1-r).*imd);
% end
% 
% 
% Original_Image = imread('flowers.tif');
% G = imnoise(Original_Image,'gaussian',0,0.01);
% Avg_G = mat2gray(filter2(fspecial('average'),G));
% Win_G = wiener2(G,[5 5]);
% G_002 = imnoise(Original_Image,'gaussian',0,0.02);
% Avg_G_002 = mat2gray(filter2(fspecial('average'),G_002));
% Win_G_002 = wiener2(G_002,[5 5]);
% G_005 = imnoise(Original_Image,'gaussian',0,0.05);
% Avg_G_005 = mat2gray(filter2(fspecial('average'),G_005));
% Win_G_005 = wiener2(G_005,[5 5]);
% G_01 = imnoise(Original_Image,'gaussian',0,0.1);
% Avg_G_01 = mat2gray(filter2(fspecial('average'),G_01));
% Win_G_01 = wiener2(G_01,[5 5]);
% subplot(4,4,1)
% imshow(Original_Image)
% title('Original Image')
% subplot(4,4,5)
% imshow(G)
% title('Default Variance of 0.01')
% subplot(4,4,9)
% imshow(Avg_G)
% title('Using Average Filter')
% subplot(4,4,13)
% imshow(Win_G)
% title('Using Wiener Filter')
% subplot(4,4,6)
% imshow(G_002)
% title('0.02 Variance')
% subplot(4,4,10)
% imshow(Avg_G_002)
% title('Using Average Filter')
% subplot(4,4,14)
% imshow(Win_G_002)
% title('Using Wiener Filter')
% subplot(4,4,7)
% imshow(G_005)
% title('0.05 Variance')
% subplot(4,4,11)
% imshow(Avg_G_005)
% title('Using Average Filter')
% subplot(4,4,15)
% imshow(Win_G_005)
% title('Using Wiener Filter')
% subplot(4,4,8)
% imshow(G_01)
% title('0.1 Variance')
% subplot(4,4,12)
% imshow(Avg_G_01)
% title('Using Average Filter')
% subplot(4,4,16)
% imshow(Win_G_01)
% title('Using Wiener Filter')
% 
% 
