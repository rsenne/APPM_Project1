function harvested = harvesting(x)
% harvesting function
% input
% x: population size at time point t
p=1.2;
q=1;
harvested = (p*(x^2))/(q+(x^2));
end
