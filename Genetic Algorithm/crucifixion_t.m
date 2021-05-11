function  out = crucifixion_t(c)

[m n] = size(c);
for i=1:1:2*m
    if(i<=m)
        c_t(i,:)=c(i,:);
    end
    % metoda progorwa ucina polowe,  zostaje 5 osobnikow, a musze miec 10,
    % wiec przepisuje 5 ktorych zostalo i losuje 5 nowych z najlepszej puli
    
    if (i>m)
        c_t(i,:)=c(randi([1,m]),:);
    end
end

for z=1:1:2
    for l=1:1:n
        out_c(z,l) = c_t(z,l);
    end
end

if mod(m,2) == 0
for i=3:1:2*m
    for j=1:1:n
        if mod(i,2)~=0
            if j <= round(n/4) || j>= round(n/2) && j <= round(2*n/3) || j>=round(3*n/6) && j <= round(3*n/12)
                out_c(i,j) = c_t(i,j);
            else
                out_c(i,j) = c_t(i+1, j);
            end
        end
        
        if mod(i,2) == 0
            if j <= round(n/4) || j>= round(n/2) && j <= round(2*n/3) || j>=round(3*n/6) && j <= round(3*n/12)
                out_c(i,j) = c_t(i,j);
            else
                out_c(i,j) = c_t(i-1,j);
            end
        end
    end
end
end

if mod(m,2) ~= 0
for i=3:1:m-1
    for j=1:1:n
        if mod(i,2)~=0
            if j <= round(n/4) || j>= round(n/2) && j <= round(2*n/3) || j>=round(3*n/6) && j <= round(3*n/12)
                out_c(i,j) = c(i,j);
            else
                out_c(i,j) = c(i+1, j);
            end
        end
        if mod(i,2) == 0
            if j <= round(n/4) || j>= round(n/2) && j <= round(2*n/3) || j>=round(3*n/6) && j <= round(3*n/12)
                out_c(i,j) = c(i,j);
            else
                out_c(i,j) = c(i-1,j);
            end
        end
    end
end
out_c(m,:) = c(m,:);
end

out = out_c;
end
    