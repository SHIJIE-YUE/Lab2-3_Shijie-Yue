function [x] = Cauchy_Mutation(x,lower_bound,upper_bound,step_size)
dimension = length(x);
for i = 1:dimension
    Cauchy_rand = tan(pi*(rand-0.5)); % Random numbers subject to standard Cauchy distribution
    x(i) = x(i) + Cauchy_rand*step_size;
    if x(i) > upper_bound(i)
        x(i) = upper_bound(i);
    end
    if x(i) < lower_bound(i)
        x(i) = lower_bound(i);
    end
end

