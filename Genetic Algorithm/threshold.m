function out = threshold(x, zmienne, t)
[m n] = size(x);
s = zeros(m,2);
for i=1:m
    s(i,:) = [funkcja_oceny(x(i,:), zmienne, t),i];
end
[srscore, srindex] = sort(s(:,1));
out = x(srindex(1:round(m/2)),:);
end


 