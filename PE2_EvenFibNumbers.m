% Project Euler Problem 2: Even Fibonacci numbers
% Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
% 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
% By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

Main()

function f = Main()
    overFourMillion = false;
    i=1;
    f=0;
    while ~overFourMillion
        x = Helpers.Fib(i);
        if x < 4000000
            if mod(x,2)==0
                f=f+x;
            end
            i = i+1;
        else
            overFourMillion = true;

        end
    end    
end