function dpdt = logisticHarvesting(p)
    dpdt = logisticPop(p) - harvesting(p);
end
 