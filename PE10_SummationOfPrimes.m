% Project Euler Problem 10: Summation of primes
% The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
% 
% Find the sum of all the primes below two million.

Main()

function f = Main()
    x = 2000000;
    f = int64(sum(find(Helpers.SieveOfEratosthenes(x)))) - 1; % 1 is not a prime number!
end