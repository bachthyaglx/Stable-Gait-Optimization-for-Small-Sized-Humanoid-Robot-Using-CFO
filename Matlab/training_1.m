X = [0 1 2 3 4 5   6 7 8 9   10 11  12 13 14 15 16 17 18   19 20 25  30 35 40 45 50 55 60 -1   -2 -3   -4 -5   -6 -7   -8    -9 -10 -11  -12  -13 -14 -15   -16   -17 -18 -19 -20   -25 -30 -35 -40 -45 -50 -55 -60];
D = [0 1 2 3 4 4.5 5 6 7 7.5 8  8.5 9  10 11 12 13 14 14.5 15 16 21  26 31 36 41 46 51 56 -0.5 -1 -1.5 -2 -2.5 -3 -3.5 -4.25 -5 -7  -7.5 -8.5 -9  -10 -10.5 -11.5 -13 -14 -15 -15.5 -21 -26 -31 -36 -41 -46 -51 -56];

net = newff(D,X,10);
net.trainParam.goal = 1e-30;
net.trainParam.min_grad = 1e-30;
net.trainParam.mu_max = 1e100;
net.divideParam.trainRatio = 1;
net.divideParam.valRatio = 0;
net.divideParam.testRatio = 0;
net = train(net,D,X);

Y1 = net(deta1');
Y2 = net(deta2');
Y3 = net(deta3');
Y5 = net(deta5');
Y6 = net(deta6');
Y7 = net(deta7');
Y8 = net(deta8');
Y10 = net(deta10');
Y11 = net(deta11');
Y12 = net(deta12');

% plot(X,'r'); hold on; plot(Y,'b');
% grid on
