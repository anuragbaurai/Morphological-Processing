function I1 = my_erode(I,mask)
[R C] = size(I);
[R1 C1] = size(mask);
%No Padding for erosion
Ipad = I;
% 2-D Convolution
I1 = zeros(R-(R1-1),C-(C1-1));
for x = 1: R-(R1-1)
    for y = 1: C-(C1-1)
        Isub = Ipad(x:x+R1-1, y:y+C1-1);
        Iprod = Isub .* mask;
        I1(x,y) = min(Iprod(:));
    end
end

