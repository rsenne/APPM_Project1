function dpdt = logisticHarvesting(p)
    dpdt = logisticPop2(p) - harvesting(p);
end
 