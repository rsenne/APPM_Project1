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
title('Mountain Lion Population')
xlabel('Time (years)')
ylabel('Population (Dozens)')
legend('Euler: h= 0.5', 'Euler: h= 0.1', 'Euler: h = 0.01', ...
    'Actual Solution')

figure
semilogy(linspace(0,30,61), errorpopLow, linspace(0,30,301), errorpopMed, ...
    linspace(0,30,3001), errorpopHigh)
title('Absolute Error of Numerical Solutions')
xlabel('Time (years)')
ylabel('Log(Absolute Error)')
legend('Error: h= 0.5', 'Error: h= 0.1', 'Error: h = 0.01')

%%
f2 = @logisticHarvesting;

x = fzero(f2, 0.1);

pop84 = eulersMethod(f2, 0.1, 0, 30, 84);
pop24 = eulersMethod(f2, 0.1, 0, 30, 24);
pop18 = eulersMethod(f2, 0.1, 0, 30, 18);
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

%%
h = @harvesting;
harvesting_simulation = arrayfun(h, linspace(1, 10000, 1000));

figure
plot(linspace(0, 1.0, 1000), harvesting_simulation);
yline(1.2)
xlabel('Prey Population Size (Dozens)')
ylabel('Prey Harvested (Dozens)')
title('Harvesting Function as Prey Population Increases')
axis([-0.005 0.12 1.195 1.201])

%%
figure
hold on
flow
xline([0 , 1.5/1.1], 'red')
yline([0, 2.5/1.4], 'black')

f3 = @lotkaVolterra;
[t, P] = ode45(f3, [0,30], [0.5, 1]);

figure
flow
hold on
plot(P(:,1), P(:,2))

figure
plot(t, P(:,1), t, P(:,2));
xlabel('Time (years)')
ylabel('Population')

%%
f4 = @lotkavolterraLogistic;

[t1, P1] = ode45(f4, [0,30], [5,1]);
[t2, P2] = ode45(f4, [0,30], [1,5]);

flow
hold on 
plot(P1(:,1), P1(:,2), P2(:,1), P2(:,2))


figure
plot(t1, P1(:,1), t1, P1(:,2))
xlabel('Time (years)')
ylabel('Population')
legend("Population 1", "Population 2")

figure
plot(t2, P2(:,1), t2, P2(:,2))
xlabel('Time (years)')
ylabel('Population')
legend("Population 1", "Population 2")