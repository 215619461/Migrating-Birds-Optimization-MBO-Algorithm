function z = T_c(I,miu,t)
%TC 此处显示有关此函数的摘要
%   此处显示详细说明
    psi1 = pxi(I,miu,t);
    Q1 = Q(I,miu,t);
    z = psi1 / (miu * (1 - Q1));
    delay = z / 5;
    z = z + delay;
end

