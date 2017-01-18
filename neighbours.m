k = 3;
load iris.txt;
one = iris(1:40,:);
two = iris(51:90,:);
three = iris(101:140,:);
check = iris(41:50,:);
check = cat(1, check, iris(91:100,:));
check = cat(1, check, iris(141:150,:));
checkResult = zeros(size(check, 1), 1);
twothree = cat(1, two, three);
for i = 1:size(check, 1)
    d = decision(one, twothree, check(i,:), k);
    if d == 2
        d = decision(two, three, check(i,:), k) + 1;
    end
    checkResult(i) = d;
end
disp(checkResult);
draw(one, two, three, check, checkResult);
