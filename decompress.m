function [decompressed_component] = decompress(component_compressed)
N = 8;
[r, c] = size(component_compressed);
decompressed_component = zeros(size(component_compressed));
for i = 1 : r/N
     for j = 1 : c/N
         sub_component = component_compressed((i-1)*N+1 : i*N,(j-1)*N+1 : j*N);
         idct_for_sub_component = idct2(sub_component);
         decompressed_component((i-1)*N+1 : i*N,(j-1)*N+1 : j*N) = idct_for_sub_component;
     end
end
end