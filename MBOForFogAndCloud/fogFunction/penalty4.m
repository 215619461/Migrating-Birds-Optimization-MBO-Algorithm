function penalty4 = penalty4(I,miu,t)
%PENALTY4 此处显示有关此函数的摘要
%   此处显示详细说明
    lamda =lamda_tao_c(I,t);
    penalty4 = max(lamda - miu,0);
end

