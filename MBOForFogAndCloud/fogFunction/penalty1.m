function penalty1 = penalty1(F,I)
%PENALTY1 此处显示有关此函数的摘要
%   此处显示详细说明
     TfogMax = 0.1;
     Tfog = T_fog(F,I);
     penalty1 = max(Tfog - TfogMax , 0);
end

