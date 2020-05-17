function drawpic(allCost, time)
    % 收益
    figure;
    x=linspace(1,285,72);
    plot(x, allCost(1:4:end), '-*');
    xlabel('Time slot number');
    ylabel('Revenue');

    % 运行时间
    figure;
    x=linspace(1,285,72);
    plot(x, time(1:4:end), '-*');
    xlabel('Time slot number');
    ylabel('Execution time (seconds)');
end