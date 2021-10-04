function error = absoluteError(observed, actual)
% absolute error function
% input:
% observed: observed value
% actual: actual solution
    error = abs(actual - observed);
end
