function z = lamda_tao_c(I,t)
%LAMDA �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    gamma = 300;%��
    lamda_tao = get_arriving_rates();
    z = (lamda_tao(t) * gamma - I) / gamma;
end

