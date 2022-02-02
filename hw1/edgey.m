cam = webcam;
while 1 == 1
snappity = cam.snapshot;
% image for normal
subplot(2,2,[1,2]);
imshow(snappity);
title('Normality');

% image for edge detection
snappity_gray = rgb2gray(snappity);
[row, col, ~] = size(snappity_gray);
% thresholding
for i = 1:row
    for j = 1:col
        if snappity_gray(i,j) >= 120
            snappity_gray(i,j) = 255;
        else 
            snappity_gray(i,j) = 0;
        end
    end
end
% use the Canny method for edge detection
edgy = edge(snappity_gray,'canny');
subplot(2,2,[3,4]);
imshow(edgy);
title('Edge Mode');
end