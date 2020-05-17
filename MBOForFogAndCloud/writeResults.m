function [allCost, time] = writeResults(flock, t, allCost, time)
    solution = getMin(flock);
    allCost(t) = - solution.cost;
    disp(['Cost of the solution: ' num2str(- solution.cost)]);
    time(t) = toc;
    disp(['Iteration run time: ' num2str(time(t)) ' s']);
end