% %1
% % img = [
% % 20 20 20 10 10 10 10 10 10
% % 20 20 20 20 20 20 20 20 10
% % 20 20 20 10 10 10 10 20 10
% % 20 20 10 10 10 10 10 20 10
% % 20 10 10 10 10 10 10 20 10
% % 10 10 10 10 20 10 10 20 10
% % 10 10 10 10 10 10 10 10 10
% % 20 10 20 20 10 10 10 20 20
% % 20 10 10 20 10 10 20 10 20
% %     ];
% 
% 
% 
% load('mandrill.mat');
% img = im2uint8(ind2gray(X,map));
% 
% img_zero = zeros(11:11);
% img_zero(2:481, 2:499) = img;
% 
% a=[-1 -1 0; -1 0 1; 0 1 1];
% b= [0 -1 -1;1 0 -1;1 1 0];
% c= [-1 -1 -1;2 2 2;-1 -1 -1];
% d=[-1 2 -1;-1 2 -1;-1 2 -1];
% e=[-1 -1 -1;-1 8 -1;-1 -1 -1];
% f=[1 1 1;1 1 1;1 1 1];
% g=[-1 0 -1;-1 0 -1;-1 0 -1];
% h=[0 -1 0;-1 4 -1;0 -1 0];
% 
% subplot(3,3,1)
% imshow(mat2gray(img))
% title("Original");
% 
% subplot(3,3,2)
% imshow(mat2gray(filter2(img,a,'full')))
% title("Mask A");
% 
% subplot(3,3,3)
% imshow(mat2gray(filter2(img,b,'full')))
% title("Mask B");
% 
% subplot(3,3,4)
% imshow(mat2gray(filter2(img,c,'full')))
% title("Mask C");
% 
% subplot(3,3,5)
% imshow(mat2gray(filter2(img,d,'full')))
% title("Mask D");
% 
% subplot(3,3,6)
% imshow(mat2gray(filter2(img,e,'full')))
% title("Mask E");
% 
% subplot(3,3,7)
% imshow(mat2gray(filter2(img,f,'full')))
% title("Mask F");
% 
% subplot(3,3,8)
% imshow(mat2gray(filter2(img,g,'full')))
% title("Mask G");
% 
% subplot(3,3,9)
% imshow(mat2gray(filter2(img,h,'full')))
% title("Mask H");
% 


% load('mandrill.mat');
% img = im2uint8(ind2gray(X,map));

% a = fspecial('gaussian',[3 3],0.5);
% b = fspecial('gaussian',[3 3],1);
% c = fspecial('gaussian',[3 3],2);
% d = fspecial('gaussian',[7 7],1);
% e = fspecial('gaussian',[7 7],3);
% f = fspecial('gaussian',[7 7],6);
% g = fspecial('gaussian',[11 11],1);
% h = fspecial('gaussian',[11 11],4);
% i = fspecial('gaussian',[11 11],8);
% j = fspecial('gaussian',[21 21],1);
% k = fspecial('gaussian',[21 21],5);
% l = fspecial('gaussian',[21 21],10);
% 
% subplot(5,3,2)
% imshow(img);title('Original Image')
% subplot(5,3,4)
% imshow(filter2(a,img)/256);title('Size:[3 3]+S.D=0.5')
% subplot(5,3,5)
% imshow(filter2(b, img)/256);title('Size:[3 3]+S.D=1')
% subplot(5,3,6)
% imshow(filter2(c,img)/256);title('Size:[3 3]+S.D=2')
% subplot(5,3,7)
% imshow(filter2(d,img)/256);title('Size:[7 7]+S.D=1')
% subplot(5,3,8)
% imshow(filter2(e,img)/256);title('Size:[7 7]+S.D=3')
% subplot(5,3,9)
% imshow(filter2(f,img)/256);title('Size:[7 7]+S.D=6')
% subplot(5,3,10)
% imshow(filter2(g,img)/256);title('Size:[11 11]+S.D=1')
% subplot(5,3,11)
% imshow(filter2(h,img)/256);title('Size:[11 11]+S.D=4')
% subplot(5,3,12)
% imshow(filter2(i,img)/256);title('Size:[11 11]+S.D=8')
% subplot(5,3,13)
% imshow(filter2(j,img)/256);title('Size:[21 21]+S.D=1')
% subplot(5,3,14)
% imshow(filter2(k,img)/256);title('Size:[21 21]+S.D=5')
% subplot(5,3,15)
% imshow(filter2(l,img)/256);title('Size:[21 21]+S.D=10')


% load('mandrill.mat');
% img = im2uint8(ind2gray(X,map));
% 
% Avg = filter2(fspecial('average',[7 7]),img);
% Gaussian = filter2(fspecial('gaussian',[7 7]),img);
% subplot(2,3,2)
% imshow(img);title("Original")
% subplot(2,3,4)
% imshow(Avg/256);title("Average filter")
% subplot(2,3,6)
% imshow(Gaussian/256);title("Gausssian filter")

% 
% load('mandrill.mat');
% img = im2uint8(ind2gray(X,map));
% img = imread('cameraman.tif');
% 
% subplot(3,3,1);
% imshow(img);title('Original')
% subplot(3,3,2);
% imshow(filter2(fspecial('average'),img)/256);
% title('Average')
% subplot(3,3,3);
% imshow(filter2(fspecial('disk'),img)/256);
% title('Disk')
% subplot(3,3,4);
% imshow(filter2(fspecial('gaussian'),img)/256);
% title('Gaussian')
% subplot(3,3,5);
% imshow(filter2(fspecial('laplacian'),img)/256);
% title('Laplacian')
% subplot(3,3,6);
% imshow(filter2(fspecial('log'),img)/256);title('log')
% subplot(3,3,7);
% imshow(filter2(fspecial('motion'),img)/256);
% title('Motion')
% subplot(3,3,8);
% imshow(filter2(fspecial('prewitt'),img)/256);
% title('Prewitt')
% subplot(3,3,9);
% imshow(filter2(fspecial('sobel'),img)/256);
% title('Sobel')

% load('mandrill.mat');
% img_mandrill = im2uint8(ind2gray(X,map));
% img_cameraman = imread('cameraman.tif');
% subplot(2,2,1);imshow(img_cameraman);
% subplot(2,2,2);imshow(imfilter(img_cameraman,fspecial('laplacian')))
% subplot(2,2,3);imshow(img_mandrill);
% subplot(2,2,4);imshow(imfilter(img_mandrill,fspecial('laplacian')))




