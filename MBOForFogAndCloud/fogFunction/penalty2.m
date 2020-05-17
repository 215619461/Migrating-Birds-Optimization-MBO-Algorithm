function penalty2 = penalty2(F,I)
%PENALTY2 此处显示有关此函数的摘要
%   此处显示详细说明
    load_fog_max = 1 * 10^(-2);
    Load = L(I,F);
    Load = std(Load);
    penalty2 = max(Load - load_fog_max,0);
end

