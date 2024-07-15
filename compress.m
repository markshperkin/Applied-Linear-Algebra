% Written by Mark Shperkin

function image = compress(input, n)

    BlackWhite = rgb2gray(input);
    BlackWhiteSingle = single(BlackWhite);

    [U,S,V] = svd(BlackWhiteSingle);

    size_S = size(S);
    diag(S);
    size(diag(S));
    width_S = size_S(2);
    first_n = [ones(n,1); zeros(width_S - n, 1)];
    S_n = S*diag(first_n);

    image = uint8(round(U*S_n*transpose(V)));
    imshow(image)

end

% compress function reduces the number of singular values of an image to compress it.
%
% Inputs:
% - input: an RGB image.
% - n: the number of singular values to retain.
%
% Output:
% - image: the compressed grayscale image.
%
% Usage in MATLAB/Octave:
% inputImage = imread('your_image.jpg');
% n = 50; % Number of singular values to retain
% compressedImage = compress(inputImage, n);
% imshow(compressedImage);
