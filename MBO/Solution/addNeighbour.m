% ��ǰ��һֻ��Ĵ��Ž�͵�ǰ�����ɵ�������������
function neighborSet = addNeighbour(best, neighborSet)
    % ���
    neighborSet = [neighborSet, best];
    
    % ����
    neighborSet = sortNeighbours(neighborSet);
end