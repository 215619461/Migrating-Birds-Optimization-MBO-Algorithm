function z = lamda_tao_c(I,t)
%LAMDA 此处显示有关此函数的摘要
%   此处显示详细说明
    gamma = 300;%秒
    lamda_tao = get_arriving_rates();
    z = (lamda_tao(t) * gamma - I) / gamma;
end

