clear all

n=population_draw(20);
f_1=bin_dec_conv(n);
config_1 = f_1;
wynikkoniec=50;
while wynikkoniec>49
    
    draw_r = roulette_draw(f_1);
    f_1_conv = dec_bin_conv(draw_r);
    cruc = crucifixion(f_1_conv);
    
    mut = mutation(cruc);
    f_1=bin_dec_conv(mut);
    wynik1=funkcja_oceny(config_1(1,:));
    wynikkoniec=funkcja_oceny(f_1(1,:));
end 

wynik1=funkcja_oceny(config_1(1,:));
wynikkoniec=funkcja_oceny(f_1(1,:));
