% img = [
%3 148 117 148 145 178 132 174;
%2 176 174 110 185 155 118 165;
%0 100 124 113 193 136 146 108;
%0 155 170 106 158 130 175 170;
%9 196 138 113 108 127 144 139;
%6 188 143 183 137 162 105 169;
%9 122 156 119 188 179 100 151;
%8 176 137 114 135 123 134 183];

%figure(1), subplot(1,2,1), imshow(img>190);
%figure(1), subplot(1,2,2), imshow(img>170);

% 
% img = [
% 100 0 0 150 150 0 0 100;
% 0 100 0 150 150 0 100 0;
% 0 0 100 150 150 100 0 0;
% 150 150 150 100 100 150 150 150;
% 150 150 150 100 100 150 150 150;
% 0 0 100 150 150 100 0 0;
% 0 100 0 150 150 0 100 0;
% 100 0 0 150 150 0 0 100;
%     ];
% 
% figure(1), subplot(1,2,1), imshow(img==100);
% figure(1), subplot(1,2,2), imshow(img==150);

% t=imread('text.tif');
% c=imread('cameraman.tif');
% % m=uint8(double(c)+255*double(t));
% m=uint8(double(c).*double(~t));


% img = imread('emu.tif');
% imshow(img),figure,imhist(img),axis tight

% c = imread('cameraman.tif');
% [x,map] = gray2ind(c);
% imshow([x]),figure,imhist([x]),axis tight

% f = [
%     0 1 2 3 4 5 6 7;
%     3244 3899 4559 2573 1428 530 101 50;
% ];
% hf = histeq(f);
% figure(1), subplot(1,3,1), imhist(f), axis tight;
% figure(1), subplot(1,3,2), imhist(hf), axis tight;
% figure(1), subplot(1,3,3), imshow(hf), axis tight;


% a = [
%     0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15;
%     20 40 60 75 80 75 65 55 50 45 40 35 30 25 20 30;
% ];

b = [
    0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15;
    0 0 40 80 45 110 70 0 0 0 0 0 0 0 0 15;
];

hf = histeq(b);
figure(1), subplot(1,3,1), imhist(b), axis tight;
figure(1), subplot(1,3,2), imhist(hf), axis tight;
figure(1), subplot(1,3,3), imshow(hf), axis tight;

