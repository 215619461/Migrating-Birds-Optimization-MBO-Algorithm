function z = cost_fog(F,I)
%COST_FOG �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    z = 0;
    eta_max = 0.01;
    for i = 1 : I
        for j = 1 : 30
            z = z + F(i,j) * rand() * eta_max;
        end
    end
end

