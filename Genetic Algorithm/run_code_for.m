clear all

n=population_draw(20,9);
f_1=bin_dec_conv(n);
config_1 = f_1;

for i=1:10
    i
    draw_r = roulette_draw(f_1, [3 2 10 12],100);
    f_1_conv = dec_bin_conv(draw_r, 10);
    cruc = crucifixion(f_1_conv);
    
    mut = mutation(cruc);
    f_1=bin_dec_conv(mut);

end 

final=funkcja_oceny(f_1(1,:), [3 2 10 12], 150);

funwysw = funkcja_oceny_wyswietlanie(f_1(1,:), [3 2 10 12], 150);
przeregulowanie = funwysw(1,1);
czas_regulacji = funwysw(1,2);
uchyb = funwysw(1,3);
blad = funwysw(1,4);

f_1(1,:)
