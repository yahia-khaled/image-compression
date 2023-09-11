image1 = imread('image1.bmp');
RED_component = image1(:,:,1);
RED_component= double(RED_component);
GREEN_COMPONENT = image1(:,:,2);
GREEN_COMPONENT= double(GREEN_COMPONENT);
BLUE_COMPONENT = image1(:,:,3);
BLUE_COMPONENT=double(BLUE_COMPONENT);
PSNR = zeros(1,4);
for m = 1 : 4
[RED_component_dct,RED_component_compressed] = dct2_comp(RED_component,m);
[GREEN_COMPONENT_dct,GREEN_COMPONENT_compressed ]= dct2_comp(GREEN_COMPONENT,m);
[BLUE_COMPONENT_dct,BLUE_COMPONENT_compressed ]= dct2_comp(BLUE_COMPONENT,m);
RED_decompressed = decompress(RED_component_dct);
GREEN_decompressed = decompress(GREEN_COMPONENT_dct);
BLUE_decompressed = decompress(BLUE_COMPONENT_dct);
image_compressed = cat(3,RED_component_compressed,GREEN_COMPONENT_compressed,BLUE_COMPONENT_compressed);
imwrite(uint8(image_compressed),['image_comp_m=',int2str(m),'.bmp']);
image_decompressed = cat(3,RED_decompressed,GREEN_decompressed,BLUE_decompressed);
imwrite(uint8(image_decompressed),['image_decomp_m=',int2str(m),'.bmp']);
PSNR(m) = psnr(uint8(image_decompressed),image1);
end
m = [1 2 3 4];
plot(m,PSNR );
xlabel('m');
ylabel('PSNR');