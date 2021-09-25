function dpdt = logisticPop(x, r, L)
r = 0.2;
L = 10;
dpdt = r*(1-x/L)*x;
end
