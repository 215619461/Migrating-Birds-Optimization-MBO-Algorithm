function penalty3 = penalty3(miu)
%PENALTY3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    delta = 0.05;
    omiga = 2 * 10 ^ 3;
    penalty3 = max(miu/delta - omiga,0);
end

