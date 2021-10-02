function dpdt = logisticPop2(x)
r = 0.65;
L = 8.1;
dpdt = r*(1-(x/L))*x;
end
