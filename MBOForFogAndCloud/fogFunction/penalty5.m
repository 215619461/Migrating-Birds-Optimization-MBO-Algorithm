function penalty5 = penalty5(I,miu,t)
%PENALTY5 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    Tc = T_c(I,miu,t);
    Tc_max = 0.1;
    penalty5 = max(Tc - Tc_max , 0);
end

