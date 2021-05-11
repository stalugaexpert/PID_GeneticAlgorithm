function out = population_draw(n, hbits)

bits = (2^hbits)-1;
b_len = length(dec2bin(bits));

    for i =1:1:n
        P(i)=randi([0 , bits]);
        I(i)=randi([0 , bits]);
        D(i)=randi([0 , bits]);
    end 
        P= dec2bin(P,b_len);
        I= dec2bin(I,b_len);
        D= dec2bin(D,b_len);

out= [P I D];
end 
