function F = randForF(IVarMax)
%RANDFORF �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    F = zeros(IVarMax,30);
    for i = 1 : IVarMax
        F(i,unidrnd(30)) = 1;
    end
end

