function [offspring1,offspring2] = Simple_Arithmetic(parent1,parent2,weight)
if length(parent1) == length(parent2)
    dimension = length(parent1);
else
    error('Two parents must have the same dimension!');
end
if weight>1 || weight<0
    error('The weight must be in [0,1]');
end
k = randi(dimension); % Randomly selected point
offspring1 = parent1;
offspring2 = parent2;
offspring1(k+1:end) = weight.*parent1(k+1:end) + (1-weight).*parent2(k+1:end);
offspring2(k+1:end) = weight.*parent2(k+1:end) + (1-weight).*parent1(k+1:end);
