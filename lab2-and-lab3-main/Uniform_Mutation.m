function [x] = Uniform_Mutation(x,mutation_rate,lower_bound,upper_bound)
dimension = length(x);
for i = 1:dimension
    if rand<mutation_rate
        x(i) = rand*(upper_bound(i)-lower_bound(i)) + lower_bound(i);
    end
end

