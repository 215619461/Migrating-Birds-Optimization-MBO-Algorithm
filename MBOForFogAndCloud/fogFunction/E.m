function z = E(I,miu,t)
%E �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    g1 = g();
    h1 = h();
    lamda = lamda_tao_c(I,t);
    delta1 = delta(I,miu,t);
    gamma = 300;
    sigma = 0.05;
    z = g1 * miu + h1 *lamda * (1 - delta1) * gamma /sigma;
end

