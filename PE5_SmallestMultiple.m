% Project Euler Problem 5: Smallest Multiple
% 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
% What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

Main()

function f = Main()
    % start at 2520 (given in question)
    f = 2520;
    while (~IsDivisible(f)); f = f+20; end
end

function TF = IsDivisible(n)
    if n<=0
        error("n must be a positive number greater than zero.");
    end
    TF = true;
    for i=20:-1:2
        if mod(n,i)~=0
            TF = false;
            break;
        end
    end
end