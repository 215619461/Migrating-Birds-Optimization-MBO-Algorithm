function penalty3 = penalty3(miu)
%PENALTY3 此处显示有关此函数的摘要
%   此处显示详细说明
    delta = 0.05;
    omiga = 2 * 10 ^ 3;
    penalty3 = max(miu/delta - omiga,0);
end

