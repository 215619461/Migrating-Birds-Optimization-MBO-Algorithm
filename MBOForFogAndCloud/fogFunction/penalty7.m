function penalty7 = penalty7(F,I)
%PENALTY7 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    penalty7 = 0;
    n = 1000;
    for j = 1 : 30
        z = 0;
        for i = 1 : I
            z = z + F(i,j);
        end
        penalty7 = penalty7 + max(0,z - n);
    end
end

