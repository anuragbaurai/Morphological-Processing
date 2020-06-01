function I1 = my_dilation(I,mask)
[R C] = size(I);
[R1 C1] = size(mask);
xpad = R1-1;
ypad = C1-1;
% Pad image with 0
Ipad = padarray(I, [xpad ypad], 0);
% 2-D Convolution
I1 = zeros(R+(R1-1),C+(C1-1));
for x = 1: R+(R1-1)
    for y = 1: C+(C1-1)
        Isub = Ipad(x:x+R1-1, y:y+C1-1);
        Iprod = Isub .* mask;
        I1(x,y) = max(Iprod(:));
    end
end
