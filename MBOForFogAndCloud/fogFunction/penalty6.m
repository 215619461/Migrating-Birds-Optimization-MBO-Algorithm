function penalty6 = penalty6(I,miu,t)
%PENALTY6 此处显示有关此函数的摘要
%   此处显示详细说明
    delta = 1 * 10 ^ 7;
    Et = E(I,miu,t);
    penalty6 = max(0,Et - delta);
end

