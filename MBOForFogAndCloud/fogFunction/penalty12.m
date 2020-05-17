function penalty12 = penalty12(E1,costFog,e)
%PENALTY12 此处显示有关此函数的摘要
%   此处显示详细说明

    penalty12 = max(costFog - E1 * e,0);
end

