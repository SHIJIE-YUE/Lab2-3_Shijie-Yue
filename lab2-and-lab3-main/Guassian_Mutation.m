function [x] = Guassian_Mutation(x,lower_bound,upper_bound,step_size)
dimension = length(x);
for i = 1:dimension
    x(i) = x(i) + randn*step_size;
    if x(i) > upper_bound(i)
        x(i) = upper_bound(i);
    end
    if x(i) < lower_bound(i)
        x(i) = lower_bound(i);
    end
end

