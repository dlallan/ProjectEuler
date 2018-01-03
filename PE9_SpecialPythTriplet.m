% Project Euler Problem 9: Special Pythagorean triplet
% A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
% 
% a^2 + b^2 = c^2
% For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
% 
% There exists exactly one Pythagorean triplet for which a + b + c = 1000.
% Find the product abc.

Main()

function f = Main()
    for i=1:998
        for j=2:998
            for k=3:998
                if (i+j+k)~=1000
                    continue;
                elseif (i<j) && (j<k)
                    if (i^2+j^2==k^2)
%                         disp([num2str(i) ' ' num2str(j) ' ' num2str(k)]);
                        f = i*j*k;
                        return % only one solution exists, so the loop can quit
                    end
                end
            end
        end
    end
end