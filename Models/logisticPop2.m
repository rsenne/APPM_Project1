function dpdt = logisticPop2(x)
% this function describes a logistic model of population growth that will
% be passed iteratively to a eulersMethod.m
% input:
% x : population size at some time point t
r = 0.65;
L = 8.1;
dpdt = r*(1-(x/L))*x;
end
