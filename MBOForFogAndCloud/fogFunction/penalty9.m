function penalty9 = penalty9(F,I)
%PENALTY9 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    penalty9 = 0;
    for j = 1 : 30
        CPU1 = CPU(F,I,j);
        M1 = M(F,I,j);
        B1 = B(F,I,j);
        penalty9 = penalty9 + max(0,CPU1-1) + max(0,M1-1) + max(0,B1-1);
    end
end

