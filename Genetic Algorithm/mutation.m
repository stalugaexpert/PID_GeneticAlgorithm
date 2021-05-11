function out = mutation(x_k)
[m n] = size(x_k);
for z = 1:1:2
    for r_m=1:1:n
        out_m(z,r_m)=x_k(z,r_m);
    end
for i=3:1:m 
    for j=1:1:n
        x=randi([1,100]);
        y = randi([0,1]);
        if x <=1            
            if y == 1
                out_m(i,j)='1';
            end
            
            if y == 0
                out_m(i,j)='0';
            end
            
        end
        
        if x>1
            out_m(i,j)=x_k(i,j);
        end       
    end   
end 
out = out_m;
end 