K_P = 200;
K_I = 100;
C1 = 10;
C2 = 0.6;
K = tf([K_P K_I],[1 0]);
MD = tf(C1, [C2 1]);
P = tf(0.026,[1 0]);
Gain_open = K*MD*P;
Gain_closed = feedback(Gain_open, 1);