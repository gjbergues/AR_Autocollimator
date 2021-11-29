load 'D:Variables\Isf_n\Isf.mat'

x = 1:1624;

Im = Isf_n(:,:,1);


%For a vector
Im_v = Im(1,:);

[H, w] = fft(Im_v);

F = abs(Y);

%For the matrix-

Y2= fft2(Im);

F2 = abs (Y2);