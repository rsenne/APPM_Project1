function dpdt = logisticPop(x)
r = 0.65;
L = 5.4;
dpdt = r*(1-(x/L))*x;
end