% Project Euler Problem 4: Largest palindrome product

% A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

% Find the largest palindrome made from the product of two 3-digit numbers.

Main()

function f = Main()
    f = 0;
    for i=100:999
        for j=999:-1:100
            x = i*j;
            if IsPalindrome(x) && x > f 
                f = x;
            end 
        end
    end
end

function TF = IsPalindrome(n)
    s = num2str(n);
    TF = true;
    for i=1:length(s)
        if s(i)~=s(end-i+1)
            TF=false;
            break;
        end
    end
end