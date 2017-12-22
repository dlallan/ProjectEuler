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
    v = GetDigits(n);
    s = length(v);
    TF = true;
    if s > 2        
        for i=1:ceil(s/2)
            if v(i)~=v(end-i+1)
                TF=false;
                break;
            end
        end
    end
end

function s = NumSize(n)
    s = max(ceil(log10(abs(n))),1);
end

function d = GetDigits(n)
    s = NumSize(n);
    x = abs(n);
    d = zeros(s,1);
    % get largest digit
    d(1) = floor(x/10^(s-1));
    % get middle digits
    for i=2:length(d)
        y = x;
        % subtract previous digits
        for j=1:i
            y=y-d(j)*10^(s-j);
        end
        d(i)=floor(y/10^(s-i));
    end    
end