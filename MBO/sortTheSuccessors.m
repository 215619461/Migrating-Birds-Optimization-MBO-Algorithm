% ����Ⱥ��������
function flock = sortTheSuccessors(nob, flock, sortAccToPerf)
    % ��Ϊ�����֮ǰ���¹��ˣ���������񲻱�
    leader = flock(1);
    % �����Ҫ����
    if eq(2, sortAccToPerf)
        % �������֮���������µĶ�����
        for i = 2:nob
            p(i - 1) = flock(i);
        end
        % ��������
        [~, index] = sort([p.cost]);
        p = p(index(:));
        % ����Ⱥ�������
        flock(1) = leader;
        for i = 2:nob
            flock(i) = p(i - 1);
        end
    end
end