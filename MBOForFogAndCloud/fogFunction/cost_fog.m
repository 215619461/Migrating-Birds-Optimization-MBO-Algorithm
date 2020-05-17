function z = cost_fog(F,I)
%COST_FOG 此处显示有关此函数的摘要
%   此处显示详细说明
    z = 0;
    eta_max = 0.01;
    for i = 1 : I
        for j = 1 : 30
            z = z + F(i,j) * rand() * eta_max;
        end
    end
end

