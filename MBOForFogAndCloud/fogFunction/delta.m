function z = delta(I,miu,t)
%DELTA 此处显示有关此函数的摘要
%   此处显示详细说明
    belta = 30;
    rou1 = rou(I,miu,t);
    z = (1-rou1)*rou1^belta/(1-rou1^(belta+1));
end

