function z = pxi(I,miu,t)
%PSI 此处显示有关此函数的摘要
%   此处显示详细说明
    rou1 = rou(I,miu,t);
    belta = 30;
    z = rou1 / (1 - rou1) - (belta + 1) * rou1 ^ (belta + 1) / (1 - rou1 ^ (belta + 1));
end

