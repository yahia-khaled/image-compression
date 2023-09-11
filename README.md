# image-compression
1. Image compression
Background:
The 1D Fourier analysis represents the signal as a weighted sum of sinusoidals or complex 
exponentials with different frequencies. Similarly, the 2D discrete cosine transform (2D DCT)
represents the 2D signal (e.g. an image or a block of an image) as a weighted sum of images with 
different spatial frequencies, as shown in Fig. 1. Spatial frequencies refer to the rate of variation 
of pixel values with respect to space coordinates.
The top left corner is DC. Images towards the top left have low horizontal and vertical spatial 
frequencies. Images towards the right have higher horizontal spatial frequency. Images towards 
the bottom have higher vertical spatial frequency. The bottom right image has the maximum 
horizontal and vertical spatial frequencies.
Most of the information of the image is concentrated in the lower spatial frequencies (the top left 
coefficients have significantly higher values). Additionally, the human eye is more sensitive to 
lower frequencies and is much less likely to notice the loss of very high spatial frequency 
components (very fine details). Therefore, ignoring higher spatial frequencies doesn’t affect much 
how the eye perceives the image.
DCT is widely used in image, video, and audio compression, because of its ability to compact 
most of the energy of a signal into few coefficients.
Task:
In this task, you will perform a simple image compression algorithm. You will read an input image 
and process each of its color components (red, green, and blue) in blocks of 8 × 8 pixels. Each 
block will be converted into frequency domain using 2D DCT and then only few coefficients are 
retained, while the rest will be ignored.
a) Read the image file ‘image1.bmp’. Extract and display each one of its three color components. 
Repeat the following steps for 𝑚 = 1,2,3,4:
b) To compress the image, process each color component in blocks of 8 × 8 pixels. Obtain 2D 
DCT of each block. It will have the same dimensions as the input block, corresponding to the 
64 basis images. Retain only the top left square of the 2D DCT coefficients of size 𝑚 × 𝑚. 
That is, if the DCT coefficients are X[1:8,1:8], retain only the top left 𝑚 × 𝑚 coefficients, 
𝑋[1: 𝑚, 1: 𝑚], assuming that the top left coefficient is 𝑋[1,1]. The rest of coefficients are 
ignored.
c) Compare the size of the original and compressed images.
d) Decompress the image by applying inverse 2D DCT to each block. Display the image.
e) The quality of the decompressed image is measured using the Peak Signal-to-Noise Ratio 
(PSNR), which is defined by 
𝑃𝑆𝑁𝑅 = 10 log10
𝑝𝑒𝑎𝑘
2
𝑀𝑆𝐸
where 𝑝𝑒𝑎𝑘 is the peak value for the pixels according to the image datatype (e.g. for uint8 
image it is 255). Mean square error (MSE) between the original image and the decompressed 
image is obtained by subtracting the corresponding pixel values of two images and obtaining 
the average of the square of all the differences. Obtain the PSNR for each value of m.
f) Plot a curve displaying the PSNR (on the vertical axis) against 𝑚 (on the horizontal axis). 
Comment on the resulting graph and quality of images.
