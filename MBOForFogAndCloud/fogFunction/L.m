function z = L(I,F)
%L �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    alpha1 = 0.3333;
    alpha2 = 0.3333;
    alpha3 = 0.3333;
    for j = 1 : 30
        z(j) = alpha1 * CPU(F,I,j) + alpha2 * M(F,I,j) + alpha3 * B(F,I,j);
    end
end

