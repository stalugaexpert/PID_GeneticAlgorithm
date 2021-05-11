function out = funkcja_oceny_optim(PID)

P = PID(1);
I = PID(2);
D = PID(3);

K = 3;
tau = 2;
T1 = 10;
T2 = 12;

options = simset('SrcWorkspace','current');
simOut = sim('funkcja_oceny_sim',150,options);

delta = 5; % + - o jakich wartościach "tunel" brać pod uwagę

% przeregulowanie (waga 0.5)

przeregulowanie = abs(((max(simOut.out) - simOut.in(end))/max(simOut.in))*100);

% czas regulacji (waga 0.1):

for i =length(simOut.time):-1:1
    if simOut.out(i)>(1+delta/100)*simOut.in(end)||simOut.out(i)<(1-delta/100)*simOut.in(end)
        czasregulacji = simOut.time(i);
        break;
    end 
end

% uchyb (waga 0.2):

uchyb = abs(simOut.out(end) - simOut.in(end)) ;

% kwadrat całki błędu (waga 0.2):

calka_error = simOut.error(end);

% wartość całej funkcji z odpowiednimi wagami kryteriów regulacji:

out = [0.5 * przeregulowanie + 0.1 * czasregulacji + 0.2 * uchyb + 0.2 * calka_error];

end 

