% �����������֮������滻�����Ϊ2��3����
function [flock, leftSide] = replaceLeaderWithSuccessor(nob, flock, leftSide)
    % ��2�滻
    if leftSide
        % �滻�����
        nf(1) = flock(2);
        % ���ÿֻ����ǰ���Ҳ಻��
        for i = 2:nob - 2
            if eq(0, mod(i,2))
                nf(i) = flock(i + 2);
            else
                nf(i) = flock(i);
            end
        end
        % ������һ��Ϊ֮ǰ��������Ҳ����һֻ����
        nf(nob - 1) = flock(1);
        nf(nob) = flock(nob);
    else
        % ��3�滻
        nf(1) = flock(3);
        % ��಻�䣬�Ҳ�ÿֻ����ǰ
        for i = 2:nob - 1
            if eq(0, mod(i,2))
                nf(i) = flock(i);
            else
                nf(i) = flock(i + 2);
            end
        end
        % �Ҳ����һֻΪ֮ǰ�������
        nf(nob) = flock(1);
    end
    % �滻��Ⱥ
    flock = nf;
    % �´��滻��һ�����
    leftSide = ~leftSide;
end