% Project Euler Problem 3: Largest prime factor
% The prime factors of 13195 are 5, 7, 13 and 29.
% What is the largest prime factor of the number 600851475143 ?

Main()

function f = Main()
    x = 600851475143;
    primes = Helpers.SieveOfEratosthenes(floor(sqrt(x)));
    for i=size(primes,2):-1:1
        if primes(i) && mod(x,i)==0
            f = i;
            break
        end
    end
end