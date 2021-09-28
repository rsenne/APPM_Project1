%% 

f = @logisticPop;

popLow = eulersMethod(f, 0.5, 0, 30, 6);
popMed = eulersMethod(f, 0.1, 0, 30, 6);
popHigh = eulersMethod(f, 0.01, 0, 30, 6);
actual_population = arrayfun(@ivp, linspace(0,30,61));
errorpopLow = absoluteError(popLow(2, :), actual_population);
errorpopMed = absoluteError(popMed(2, :), arrayfun(@ivp, ...
    linspace(0,30,301)));
errorpopHigh = absoluteError(popHigh(2, :), arrayfun(@ivp, ...
    linspace(0,30,3001)));


figure
plot(popLow(1, :), popLow(2, :), popMed(1, :), popMed(2, :), ':', ...
    popHigh(1, :), popHigh(2, :), '--', linspace(0,30,61), ...
    actual_population, '-.')
xlabel('Time (years)')
ylabel('Population')
legend('Euler: h= 0.5', 'Euler: h= 0.1', 'Euler: h = 0.01', ...
    'Actual Solution')

figure
semilogy(linspace(0,30,61), errorpopLow, linspace(0,30,301), errorpopMed, ...
    linspace(0,30,3001), errorpopHigh)
xlabel('Time (years)')
ylabel('Log(Absolute Error)')
legend('Error: h= 0.5', 'Error: h= 0.1', 'Error: h = 0.01')

%%
f2 = @logisticHarvesting;

% % %x = fzero(f2, 1);

pop84 = eulersMethod(f2, 0.1, 0, 30, 84);
pop24 = eulersMethod(f2, 0.1, 0, 30, 24);
pop18 =eulersMethod(f2, 0.1, 0, 30, 18);
pop6 = eulersMethod(f2, 0.1, 0, 30, 6);

figure
hold on
plot(pop84(1, :), pop84(2, :), pop24(1, :), pop24(2, :), ':', pop18(1, :), ...
    pop18(2, :), '--', pop6(1, :), pop6(2, :), '-.')
xlabel('Time (years)')
ylabel('Population')
legend('Euler: h= 0.5', 'Euler: h= 0.1', 'Euler: h = 0.01', ...
    'Actual Solution')
dirfield(f2, 0:1:30, 0:0.5:10, 'hi')
