% ����Ⱥ�б�����õĽ����滻�����
function flock = replaceLeaderWithBest(nob, flock)
    % Ѱ����Ⱥ�б�����õ�
    best = 1;
    for i = 2:length(flock)
        if flock(i).cost <= flock(best).cost
            best = i;
        end
    end
    
    % �������������ã���֮�䷵��
    if eq(1, best)
        return;
    end
    
    % �����µ���Ⱥ�������Ϊ������õ�
    nf(1) = flock(best);
    % ��best֮ǰ�����λ�ö�����Ҫ�仯
    for i = 2:best - 1
        nf(i) = flock(i);
    end
    
    % ���best�����
    if eq(0, mod(best,2))
        % ������ÿ����ǰ�ƣ��Ҳ�Ĳ���
        for i = best:nob - 2
            if eq(0, mod(i,2))
                nf(i) = flock(i + 2);
            else
                nf(i) = flock(i);
            end
        end
        % �������һ��Ϊ֮ǰ��������Ҳ಻��
        nf(nob - 1) = flock(1);
        nf(nob) = flock(nob);
    else
        % ���Ҳ�
        % ���Ĳ��䣬���Ҳ��������ǰ��
        for i = best:nob - 1
            if eq(0, mod(i,2))
                nf(i) = flock(i);
            else
                nf(i) = flock(i + 2);
            end
        end
        % �Ҳ����һ��Ϊ֮ǰ�������
        nf(nob) = flock(1);
    end
    
    % ������Ⱥ
    flock = nf;
end