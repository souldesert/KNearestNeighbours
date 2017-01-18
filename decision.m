function [decision] = decision(one, two, point, k)
distanceOne = zeros(size(one, 1), 1);
for i = 1:size(one, 1)
    value = 0;
    for j = 1:size(point, 2)
        value = value + (point(j) - one(i, j))^2;
    end
    value = sqrt(value);
    distanceOne(i) = value;
end
distanceTwo = zeros(size(two, 1), 1);
for i = 1:size(two, 1)
    value = 0;
    for j = 1:size(point, 2)
        value = value + (point(j) - two(i, j))^2;
    end
    value = sqrt(value);
    distanceTwo(i) = value;
end
distance = cat(1, distanceOne, distanceTwo);
distance = sort(distance);
distance = distance(1:k);
first = 0;
second = 0;
for i = 1:size(distance)
    if ismember(distance(i), distanceOne)
        first = first + 1;
    else
        second = second + 1;
    end
end
if first > second
    decision = 1;
elseif first < second
    decision = 2;
else
    disp('Error!!!');
end
    