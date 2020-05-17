function penalty7 = penalty7(F,I)
%PENALTY7 此处显示有关此函数的摘要
%   此处显示详细说明
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

