function out = bin_dec_conv(m_p)

    [m n] = size(m_p);

    % konwertujemy bity na liczby dziesiętne, po konwersji
    % dzielimy je na 100, ponieważ przy konwertowaniu liczb
    % dziesiętnych na binarne mnożyliśmy je razy 100, żeby
    % otrzymać liczby całkowite nastaw regulatora

    for i =1:1:m
        
        P(i)= bin2dec(m_p(i,1:n/3))/100;
        I(i)=bin2dec(m_p(i,n/3+1:2*n/3))/100;
        D(i)=bin2dec(m_p(i,2*n/3+1:n))/100;
        
    end 
    out =[P' I' D'];

end 