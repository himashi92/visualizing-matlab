onionOrig = imread('C:\Users\himas\OneDrive\Desktop\ICCV_NMI\Nature submission\tumor\113\unetr.png');
onionGray = rgb2gray(imread('C:\Users\himas\OneDrive\Desktop\ICCV_NMI\Nature submission\tumor\113\input.png'));
onionMask = ~(onionOrig(:,:,1)<100 & onionOrig(:,:,2)<100 & onionOrig(:,:,3)<100);

onionMasked(:,:,1) = double(onionOrig(:,:,1)) .* onionMask + double(onionGray) .* ~onionMask;
onionMasked(:,:,2) = double(onionOrig(:,:,2)) .* onionMask + double(onionGray) .* ~onionMask;
onionMasked(:,:,3) = double(onionOrig(:,:,3)) .* onionMask + double(onionGray) .* ~onionMask;

onionFinal = uint8(onionMasked);
imshow(onionFinal)

O_name = 'C:\Users\himas\OneDrive\Desktop\ICCV_NMI\Nature submission\tumor\113\unetr_o.png';
imwrite(onionFinal, O_name);

% I = imread('D:\CVPR2022\munawar\Evalution\supp\unet.png');
% I = ind2rgb(rgb2gray(I),jet);
% imshow(I)
% I_name = 'D:\CVPR2022\munawar\Evalution\supp\unet_m.png';
% imwrite(I, I_name);