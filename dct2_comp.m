function [dct_with_zero_coefficient,DCT_compressed] = dct2_comp(component, m)
N = 8;
[r ,c] = size(component);
dct_with_zero_coefficient = zeros(size(component));
 for i = 1 : r/N
     for j = 1 : c/N
         sub_component = component((i-1)*N+1 : i*N,(j-1)*N+1 : j*N);
         DCT_sub = dct2(sub_component);
         DCT_compressed(m*(i-1)+1 : i*m,m*(j-1)+1 : j*m) = DCT_sub(1:m,1:m);
         dct_with_zero_coefficient((i-1)*N+1 : (i-1)*N+m,(j-1)*N+1 : (j-1)*N+m) = DCT_sub(1:m,1:m);
     end
 end
end