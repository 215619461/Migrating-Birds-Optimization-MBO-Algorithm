function penalty6 = penalty6(I,miu,t)
%PENALTY6 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    delta = 1 * 10 ^ 7;
    Et = E(I,miu,t);
    penalty6 = max(0,Et - delta);
end

