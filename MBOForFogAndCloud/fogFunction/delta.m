function z = delta(I,miu,t)
%DELTA �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    belta = 30;
    rou1 = rou(I,miu,t);
    z = (1-rou1)*rou1^belta/(1-rou1^(belta+1));
end

