% Project Euler Problem 3: Largest prime factor
% The prime factors of 13195 are 5, 7, 13 and 29.

% What is the largest prime factor of the number 600851475143 ?

x = 600851475143;
primes = SieveOfEratosthenes(floor(sqrt(x)));
for i=size(primes,2):-1:1
    if primes(i) && mod(x,i)==0
        break
    end
end
disp(i);

function arr = SieveOfEratosthenes(n)
    arr = true(1,n-2);
    for i=2:sqrt(n)
        if arr(i)
            j = 0; k = i^2 + j*i;
            while (k < n)
                arr(k) = false;
                j = j+1;
                k = i^2 + j*i;
            end
        end
    end
end