% ��ȡ��Ⱥ�е����Ž�
function solution = getMin(flock)
    min = realmax;
    solution = flock(1);
    
    % ���α�����Ѱ��cost��Сֵ
    for i = 1:length(flock)
        if flock(i).cost < min
            min = flock(i).cost;
            solution = flock(i);
        end
    end
end