function penalty5 = penalty5(I,miu,t)
%PENALTY5 此处显示有关此函数的摘要
%   此处显示详细说明
    Tc = T_c(I,miu,t);
    Tc_max = 0.1;
    penalty5 = max(Tc - Tc_max , 0);
end

