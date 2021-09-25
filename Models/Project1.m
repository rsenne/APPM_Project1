%% 
f = @logisticPop(~, 0.2, 10)

a = eulersMethod(f, 0.05, 0, 30, 1000);
