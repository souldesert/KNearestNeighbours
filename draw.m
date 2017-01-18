function draw(one, two, three, check, checkResult)
all = cat(1, one, two, three, check);
[all,~,~,~] = GK(all,1,2);
plot(all(1:40, 1), all(1:40, 2), 'or');
hold on;
plot(all(41:80, 1), all(41:80, 2), 'og');
hold on;
plot(all(81:120, 1), all(81:120, 2), 'ob');
hold on;
for i = 1:size(check, 1)
    if checkResult(i) == 1
        marker = '*r';        
    elseif checkResult(i) == 2
        marker = '*g';
    else
        marker = '*b';
    end
    plot(all(120 + i, 1), all(120 + i, 2), marker);
    hold on;
end
