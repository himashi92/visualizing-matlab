I = imread('critic2_gray.png');
cmap = colormap(jet(150));
I = ind2rgb(rgb2gray(I),cmap);
imshow(I)

img_folder = 'C:\Users\himas\OneDrive\Desktop\ICCV_NMI\confidence\critic2_heatmap.png';
imwrite(I, img_folder); 