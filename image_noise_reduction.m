
image = imread('indir.jpg');
n = imnoise(image,'salt & pepper',0.30);

red_channel = n(:,:,1);
green_channel = n(:,:,2);
blue_channel = n(:,:,3);

red_channel = ordfilt2(red_channel,15,ones(5,5));
green_channel = ordfilt2(green_channel,15,ones(5,5));
blue_channel = ordfilt2(blue_channel,15,ones(5,5));

f = cat(3,red_channel,green_channel,blue_channel);

subplot(2,1,1);imshow(n);title('noisy form');
subplot(2,1,2);imshow(f);title('after noisty');



