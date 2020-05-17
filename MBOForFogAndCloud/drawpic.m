function drawpic(allCost, time)
    % ����
    figure;
    x=linspace(1,285,72);
    plot(x, allCost(1:4:end), '-*');
    xlabel('Time slot number');
    ylabel('Revenue');

    % ����ʱ��
    figure;
    x=linspace(1,285,72);
    plot(x, time(1:4:end), '-*');
    xlabel('Time slot number');
    ylabel('Execution time (seconds)');
end