function out = dec_bin_conv(m_p)

    bits=1023;
    b_len = length(dec2bin(bits));

    % konwertujemy liczby dziesiętne na bajty, mnożymy razy 100, w celu
    % łatwiejszego zapisu bitowego - przy odwrotnej konwersji będziemy
    % dzielić przez 100, żeby uzyskać prawidłowe wartości (zakładamy
    % udział liczb mniejszych od 100).
    
    P = dec2bin(int32(m_p(:,1)*100),b_len);
    I = dec2bin(int32(m_p(:,2)*100),b_len);
    D = dec2bin(int32(m_p(:,3)*100),b_len);
    
    out =[P I D];

end 