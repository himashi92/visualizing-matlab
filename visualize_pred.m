imgFolder = 'C:\Users\himas\OneDrive\Desktop\ICCV_NMI\Nature submission\tumor\113';
pred_file_path = fullfile(imgFolder, "gt.png");
original_GT_file_path = fullfile(imgFolder, "gt.png");
original_I_file_path = fullfile(imgFolder, "input.png");

figure;

Input = imread(original_I_file_path);
BW = imbinarize(imread(pred_file_path), 0.5);

x = labeloverlay(Input,BW,'Colormap','autumn','Transparency',0.25); 

imwrite(x,'C:\Users\himas\OneDrive\Desktop\ICCV_NMI\Nature submission\tumor\113\gt_o.png','ResolutionUnit','unknown','XResolution',2362, 'YResolution',2362);
