% Project Euler Problem 7: 10001st Prime
% By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
% What is the 10001st prime number?

Main()

function f = Main()
    % Assume that the 10001st prime number will occur 
    % below some reasonable threshold
    primes = Helpers.SieveOfEratosthenes(1000000);
    indexes = find(primes,10002);
    f = indexes(end);
end