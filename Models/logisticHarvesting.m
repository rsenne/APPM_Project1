function dpdt = logisticHarvesting(p)
% combination of logistic equation2 and the harvesting function
% see logisticPop2.m and ahrvesting.m for further explanation
% p: population
    dpdt = logisticPop2(p) - harvesting(p);
end
 