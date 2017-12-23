classdef Helpers
    properties % none so far
    end
    methods(Static)
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
        function f = Fib(n)
        % FIB Fibonacci.
        % FIB(N) returns the Nth term in the Fibonacci sequence.

            % recursive case
            if n > 2
                f = Helpers.Fib(n-1) + Helpers.Fib(n-2);
            % base case
            elseif n==2 || n==1
                f = n;
            % give error code if input less than 1
            else
                f = -1;
            end
        end
        function TF = IsPalindrome(n)
            v = Helpers.GetDigits(n);
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
            s = Helpers.NumSize(n);
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
    end
end