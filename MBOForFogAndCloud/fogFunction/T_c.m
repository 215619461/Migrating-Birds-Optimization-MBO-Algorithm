function z = T_c(I,miu,t)
%TC �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    psi1 = pxi(I,miu,t);
    Q1 = Q(I,miu,t);
    z = psi1 / (miu * (1 - Q1));
    delay = z / 5;
    z = z + delay;
end

