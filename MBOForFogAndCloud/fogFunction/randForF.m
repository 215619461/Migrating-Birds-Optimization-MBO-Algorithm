function F = randForF(IVarMax)
%RANDFORF 此处显示有关此函数的摘要
%   此处显示详细说明
    F = zeros(IVarMax,30);
    for i = 1 : IVarMax
        F(i,unidrnd(30)) = 1;
    end
end

