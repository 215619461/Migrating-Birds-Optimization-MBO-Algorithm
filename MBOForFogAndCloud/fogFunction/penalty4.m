function penalty4 = penalty4(I,miu,t)
%PENALTY4 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    lamda =lamda_tao_c(I,t);
    penalty4 = max(lamda - miu,0);
end

