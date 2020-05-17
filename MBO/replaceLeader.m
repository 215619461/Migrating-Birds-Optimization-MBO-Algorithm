% ���������
function [flock, leftSide] = replaceLeader(nob, flock, leaderImproves, leaderExchangeMode, leftSide)
    % ���ݲ�ͬ��ģʽ����ѡ��
    switch leaderExchangeMode
        case 1
            % �����������֮������滻�����Ϊ2��3����    �ϴ��滻��2������滻3����֮��Ȼ
            [flock, leftSide] = replaceLeaderWithSuccessor(nob, flock, leftSide);
        case 2
            % ����Ⱥ�б�����õĽ����滻
            flock = replaceLeaderWithBest(nob, flock);
        case 3
            % ��������û�и��£�������Ⱥ�б�����õ��滻
            if ~leaderImproves
                flock = replaceLeaderWithBest(nob, flock);
            end
    end
end