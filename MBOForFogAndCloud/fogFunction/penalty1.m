function penalty1 = penalty1(F,I)
%PENALTY1 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
     TfogMax = 0.1;
     Tfog = T_fog(F,I);
     penalty1 = max(Tfog - TfogMax , 0);
end

