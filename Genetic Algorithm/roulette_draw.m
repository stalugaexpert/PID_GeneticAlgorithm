function out = roulette_draw(x, zmienne, t)
[m n] = size(x);
score= zeros(m,2);
for i=1:m
    score(i,:)= [funkcja_oceny(x(i,:), zmienne, t),i];
end 
sum_score = sum(score(:,1));
part = [score(:,1)/sum_score,score(:,2)];
part_r= zeros(m,2);
division=zeros(m,2);
for i=1:m
    part_r(i,:)= [1/(1+part(i,1)*100),part(i,2)];
    division(i,:) = [sum(part_r(1:i,1)),part_r(i,2)];
end 
max = division(end,1);
p=zeros(m,1);
for i =1:m
    p_k= rand(1)*max;
    for j=1:m
        if p_k<=division(j,1)
            p(i)=division(j,2);
            break;
        end 
        
    end
end 

out = zeros(m,3);
 [srscore, srindex] = sort(score(:,1));
 d = srindex(1);
 e = srindex(2);

 out(1,:) = x(d,:);
 out(2,:) = x(e,:);

for i =3:m
    out(i,:)=x(p(i),:);
end 
end