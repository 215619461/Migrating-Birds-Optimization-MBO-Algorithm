function penalty2 = penalty2(F,I)
%PENALTY2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    load_fog_max = 1 * 10^(-2);
    Load = L(I,F);
    Load = std(Load);
    penalty2 = max(Load - load_fog_max,0);
end

