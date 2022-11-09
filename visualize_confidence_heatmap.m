function heat_map = visualize_confidence_heatmap(rgb_img,dis_out, img_folder)
[Gmag,Gdir] = imgradient(dis_out);
im = double(Gmag);
cmap = colormap(jet(200));
im2 = ind2rgb(uint8(im * 255), cmap); 
rgb = ind2rgb(uint8(rgb_img*255), cmap); 
heat_map = uint8(im2*0.5 + rgb*0.5*255);
imwrite(im2, img_folder); 
end