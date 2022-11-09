imgFolder = 'C:\Users\himas\OneDrive\Desktop\ICCV_NMI\confidence\';
pred_file_path = fullfile(imgFolder, "00_pred_1.png");
mask_file_path = fullfile(imgFolder, "00_gt.png");
uncer_file_path = fullfile(imgFolder, "00_critic.png");

rgb_img = rgb2gray(im2double(imread(mask_file_path)));
dis_out = rgb2gray(im2double(imread(uncer_file_path))); 
img_folder = 'C:\Users\himas\OneDrive\Desktop\ICCV_NMI\confidence\confidence_heatmap.png';
visualize_confidence_heatmap(rgb_img, dis_out, img_folder);
