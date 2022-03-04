function [offspring1,offspring2] = Arithmetic(parent1,parent2,weight)
if length(parent1) == length(parent2)
    dimension = length(parent1);
else
    error('Two parents must have the same dimension!');
end
if weight>1 || weight<0
    error('The weight must be in [0,1]');
end
offspring1 = weight.*parent1 + (1-weight).*parent2;
offspring2 = weight.*parent2 + (1-weight).*parent1;
