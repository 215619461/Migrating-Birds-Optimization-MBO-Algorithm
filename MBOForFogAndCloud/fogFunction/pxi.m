function z = pxi(I,miu,t)
%PSI �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    rou1 = rou(I,miu,t);
    belta = 30;
    z = rou1 / (1 - rou1) - (belta + 1) * rou1 ^ (belta + 1) / (1 - rou1 ^ (belta + 1));
end

