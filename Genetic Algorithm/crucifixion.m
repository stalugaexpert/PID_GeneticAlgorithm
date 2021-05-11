function  out = crucifixion(c)
[m n] = size(c);
for z=1:1:2
    for r_c=1:1:n
        out_c(z,r_c) = c(z,r_c);
    end
end
if mod(m,2) == 0
for i=3:1:m
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
    