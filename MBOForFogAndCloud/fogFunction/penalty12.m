function penalty12 = penalty12(E1,costFog,e)
%PENALTY12 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

    penalty12 = max(costFog - E1 * e,0);
end

