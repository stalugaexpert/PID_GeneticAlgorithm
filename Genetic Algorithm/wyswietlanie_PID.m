function out = wyswietlanie_PID(PID, zmienne, t)

P = PID(1,1);
I = PID(1,2);
D = PID(1,3);

K = zmienne(1);
tau = zmienne(2);
T1 = zmienne(3);
T2 = zmienne(4);

options = simset('SrcWorkspace','current');
simOut = sim('symulacja_pid1w',t,options);

out = [simOut.out, simOut.time];

end 