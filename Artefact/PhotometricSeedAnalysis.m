%UROS Project (July 2017) - Photometric Seed Analysis
%Peter Leonard Hart - HAR12421031
%Staff Supervisor: Wenting Duan

% LOAD IMAGE
close all; clc; clear; % Reset
selectedFile = 'C:\Users\Peter\Documents\GitHub\UROS_PhotometricSeedAnalysisProject\Artefact\Images\Capture_00016.jpg';
im = imread(selectedFile); % Gather input
imStruct = size(im(:,:,:));  % Store the structural data about the image
imRows = (imStruct(1)); imColumns = (imStruct(2)); imChannels = (imStruct(3)); % Store structure data into separate variables (for clarity)

% IMAGE ENHANCEMENT
imGrey = rgb2gray(im); % Greyscale conversion formula: 0.2989 * R + 0.5870 * G + 0.1140 * B 
imHist = histeq(imGrey); %histogram equalisation

% SEGMENTATION
% WATERSHED
% imBin = im2bw(imGrey,graythresh(imGrey));
% imBinC = ~imBin;
% D = bwdist(imBinC);
% L = watershed(-D);
% w = L == 0;
% g2 = imBin & ~w;

% K-MEANS CLUSTERING
% cform = makecform('srgb2lab');
% lab_he = applycform(im,cform);
% 
% ab = double(lab_he(:,:,2:3));
% nrows = size(ab,1);
% ncols = size(ab,2);
% ab = reshape(ab,nrows*ncols,2);
% 
% nColors = 3; %LAB
% [cluster_idx, cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean','Replicates',3);
% pixel_labels = reshape(cluster_idx,nrows,ncols);
% segmented_images = cell(1,3);
% rgb_label = repmat(pixel_labels,[1 1 3]);
% 
% for k = 1:nColors
%     color = im;
%     color(rgb_label ~= k) = 0;
%     segmented_images{k} = color;
% end


%end of script