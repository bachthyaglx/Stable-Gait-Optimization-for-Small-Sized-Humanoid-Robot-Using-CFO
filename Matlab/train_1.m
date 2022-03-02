% load('dang1.mat');
X1 = [0 1 2 3 4 5   6 7 8 9   10 11  12 13 14 15 16 17 18   19 20 25  30 35 40 45 50 55 60 -1   -2 -3   -4 -5   -6 -7   -8    -9 -10 -11  -12  -13 -14 -15   -16   -17 -18 -19 -20   -25 -30 -35 -40 -45 -50 -55 -60];
D1 = [0 1 2 3 4 4.5 5 6 7 7.5 8  8.5 9  10 11 12 13 14 14.5 15 16 21  26 31 36 41 46 51 56 -0.5 -1 -1.5 -2 -2.5 -3 -3.5 -4.25 -5 -7  -7.5 -8.5 -9  -10 -10.5 -11.5 -13 -14 -15 -15.5 -21 -26 -31 -36 -41 -46 -51 -56];

% X12 = [0 5 10 15 20 25 30 35 40 45 -5 -10 -15 -20 -25 -30 -35 -40];
% D12 = [0 3 7  12 17 22 27 32 38 41 -3 -7  -12 -15 -20 -26 -31 -36];

X12 = [0 1 2 3 4 5   6 7 8 9   10 11  12 13 14 15 16 17 18   19 20 25  30 35 40 45 50 55 60 -1   -2 -3   -4 -5   -6 -7   -8    -9 -10 -11  -12  -13 -14 -15   -16   -17 -18 -19 -20   -25 -30 -35 -40 -45 -50 -55 -60];
D12 = [0 1 2 3 4 4.5 5 6 7 7.5 8  8.5 9  10 11 12 13 14 14.5 15 16 21  26 31 36 41 46 51 56 -0.5 -1 -1.5 -2 -2.5 -3 -3.5 -4.25 -5 -7  -7.5 -8.5 -9  -10 -10.5 -11.5 -13 -14 -15 -15.5 -21 -26 -31 -36 -41 -46 -51 -56];

% X6 = [0 5 10 15 20 25 30 35 40 45 50 -5 -10 -15 -20 -25 -30 -35 -40 -45 -50];
% D6 = [0 5 10 15 20 25 30 35 40 45 50 -5 -10 -15 -20 -25 -30 -35 -40 -45 -50];

% X7 = [0 5 10 15 20 25 30 35 40 45 50 -5 -10 -15 -20 -25 -30 -35 -40 -45 -50];
% D7 = [0 5 10 15 20 25 30 35 40 45 50 -5 -10 -15 -20 -25 -30 -35 -40 -45 -50];

X6 = [0 1 2 3 4 5   6 7 8 9   10 11  12 13 14 15 16 17 18   19 20 25  30 35 40 45 50 55 60 -1   -2 -3   -4 -5   -6 -7   -8    -9 -10 -11  -12  -13 -14 -15   -16   -17 -18 -19 -20   -25 -30 -35 -40 -45 -50 -55 -60];
D6 = [0 1 2 3 4 4.5 5 6 7 7.5 8  8.5 9  10 11 12 13 14 14.5 15 16 21  26 31 36 41 46 51 56 -0.5 -1 -1.5 -2 -2.5 -3 -3.5 -4.25 -5 -7  -7.5 -8.5 -9  -10 -10.5 -11.5 -13 -14 -15 -15.5 -21 -26 -31 -36 -41 -46 -51 -56];

X7 = [0 1 2 3 4 5   6 7 8 9   10 11  12 13 14 15 16 17 18   19 20 25  30 35 40 45 50 55 60 -1   -2 -3   -4 -5   -6 -7   -8    -9 -10 -11  -12  -13 -14 -15   -16   -17 -18 -19 -20   -25 -30 -35 -40 -45 -50 -55 -60];
D7 = [0 1 2 3 4 4.5 5 6 7 7.5 8  8.5 9  10 11 12 13 14 14.5 15 16 21  26 31 36 41 46 51 56 -0.5 -1 -1.5 -2 -2.5 -3 -3.5 -4.25 -5 -7  -7.5 -8.5 -9  -10 -10.5 -11.5 -13 -14 -15 -15.5 -21 -26 -31 -36 -41 -46 -51 -56];

X2 = [0 5 10 15   20 25 30 35 40   45 50 -5    -10 -15    -20 -25   -30    -35 -40 -45];
D2 = [0 4 8  13.5 18 22 27 32 36.5 42 47 -4.75 -8  -12.75 -18 -22.5 -29.75 -33 -40 -45];

X11 = [0 5 10 15   20 25 30 35 40   45 50 -5    -10 -15    -20 -25   -30    -35 -40 -45];
D11 = [0 4 8  13.5 18 22 27 32 36.5 42 47 -4.75 -8  -12.75 -18 -22.5 -29.75 -33 -40 -45];

% X11 = [0 5    10   15    20   25   30 35 40 45 50 -5   -10   -15    -20 -25 -30   -35 -40   -45 -50];
% D11 = [2 5.75 10.5 15.75 19.5 25.5 30 35 40 45 50 -4.5 -8.75 -14.75 -18 -23 -28.5 -33 -38.5 -43 -48];

X3 = [0  5 10 15 20    25 30    35 40 45   50 55 60   65   70 75  80      -5    -10 -15 -20 -25 -30 -35 -40 -45 -50   -55 -60   -65   -70   -75    -80];
D3 = [-1 7 14 22 27.75 35 41.75 48 55 57.5 66 71 78.5 86.5 93 101 107.5   -5.75 -12 -18 -24 -32 -40 -46 -53 -59 -66.5 -73 -79.5 -87.5 -95.5 -102.5 -110];   

X10 = [0  5 10 15 20    25 30    35 40 45   50 55 60   65   70 75  80      -5    -10 -15 -20 -25 -30 -35 -40 -45 -50   -55 -60   -65   -70   -75    -80];
D10 = [-1 7 14 22 27.75 35 41.75 48 55 57.5 66 71 78.5 86.5 93 101 107.5   -5.75 -12 -18 -24 -32 -40 -46 -53 -59 -66.5 -73 -79.5 -87.5 -95.5 -102.5 -110];

% X10 = [0  5    10 15    20 25 30 35 40    45 50   55 60   65 70 75    80  -5 -10    -15    -20 -25 -30    -35 -40    -45 -50 -55 -60 -65];
% D10 = [-2 7.75 14 18.75 24 30 36 43 47.75 55 62.5 69 74.5 82 90 97.75 113 -4 -11.75 -16.75 -23 -30 -37.75 -43 -52.75 -62 -66 -75 -80 -88];
% X10 = [0  5    10 15    20 25 30 35 40    -5 -10    -15    -20 -25 -30    -35 -40];
% D10 = [-2 7.75 14 18.75 24 30 36 43 47.75 -4 -11.75 -16.75 -23 -30 -37.75 -43 -52.75];

% X5 = [0 5    10   15 20   25    30    35    40   -5   -10 -15  -20 -25    -30    -35 -40];
% D5 = [5 9.75 13.5 18 22.5 26.75 31.75 35.75 40.5 -2.5 -4  -7.5 -11 -16.75 -20.75 -25 -30];
% 
% X8 = [0 5  10 15 20 25    30 35   40   -5 -10   -15   -20    -25    -30    -35 -40];
% D8 = [5 10 15 20 23 27.75 32 36.5 41.5 3  -0.75 -4.75 -10.75 -14.75 -18.75 -24 -28];

X5 = [0 5 10  15 20    25    30    35 40 45 50 55 60 -5 -10 -15    -20    -25 -30    -35 -40    -45 -50 -55 -60];
D5 = [0 5 9.5 14 19.75 22.25 27.75 31 36 40 45 50 55 -4 -7  -12.25 -15.25 -21 -24.25 -30 -34.25 -40 -45 -49 -54];

X8 = [0 5 10  15 20    25    30    35 40 45 50 55 60 -5 -10 -15    -20    -25 -30    -35 -40    -45 -50 -55 -60];
D8 = [0 5 9.5 14 19.75 22.25 27.75 31 36 40 45 50 55 -4 -7  -12.25 -15.25 -21 -24.25 -30 -34.25 -40 -45 -49 -54];

% X8 = [0 5 10   15 20    25    30 35    40 45 50   55   60 -5 -10 -15   -20 -25 -30    -35 -40    -45 -50 -55   -60];
% D8 = [0 5 9.25 13 17.75 22.25 26 30.25 35 40 44.5 48.5 53 -3 -6  -10.5 -15 -20 -24.25 -28 -33.25 -40 -44 -48.5 -52.5];

% net = newff(D1,X1,10);
% net.trainParam.goal = 1e-30;
% net.trainParam.min_grad = 1e-30;
% net.trainParam.mu_max = 1e100;
% net.divideParam.trainRatio = 1;
% net.divideParam.valRatio = 0;
% net.divideParam.testRatio = 0;
% net = train(net,D1,X1);
% Y = net(deta1(:,1)');

% deta = deta(:,1)';
 
net1 = newff(D1,X1,10);
net1.trainParam.goal = 1e-30;
net1.trainParam.min_grad = 1e-30;
net1.trainParam.mu_max = 1e100;
net1.divideParam.trainRatio = 1;
net1.divideParam.valRatio = 0;
net1.divideParam.testRatio = 0;
net1 = train(net1,D1,X1);
Y1 = net1(D1);

net2 = newff(D2,X2,10);
net2.trainParam.goal = 1e-30;
net2.trainParam.min_grad = 1e-30;
net2.trainParam.mu_max = 1e100;
net2.divideParam.trainRatio = 1;
net2.divideParam.valRatio = 0;
net2.divideParam.testRatio = 0;
net2 = train(net2,D2,X2);
Y2 = net2(D2);

net3 = newff(D3,X3,10);
net3.trainParam.goal = 1e-30;
net3.trainParam.min_grad = 1e-30;
net3.trainParam.mu_max = 1e100;
net3.divideParam.trainRatio = 1;
net3.divideParam.valRatio = 0;
net3.divideParam.testRatio = 0;
net3 = train(net3,D3,X3);
Y3 = net3(D3);

net5 = newff(D5,X5,10);
net5.trainParam.goal = 1e-30;
net5.trainParam.min_grad = 1e-30;
net5.trainParam.mu_max = 1e100;
net5.divideParam.trainRatio = 1;
net5.divideParam.valRatio = 0;
net5.divideParam.testRatio = 0;
net5 = train(net5,D5,X5);
Y5 = net5(D5);

net6 = newff(D6,X6,10);
net6.trainParam.goal = 1e-30;
net6.trainParam.min_grad = 1e-30;
net6.trainParam.mu_max = 1e100;
net6.divideParam.trainRatio = 1;
net6.divideParam.valRatio = 0;
net6.divideParam.testRatio = 0;
net6 = train(net6,D6,X6);
Y6 = net6(D6);

net7 = newff(D7,X7,10);
net7.trainParam.goal = 1e-30;
net7.trainParam.min_grad = 1e-30;
net7.trainParam.mu_max = 1e100;
net7.divideParam.trainRatio = 1;
net7.divideParam.valRatio = 0;
net7.divideParam.testRatio = 0;
net7 = train(net7,D7,X7);
Y7 = net7(D7);

net8 = newff(D8,X8,10);
net8.trainParam.goal = 1e-30;
net8.trainParam.min_grad = 1e-30;
net8.trainParam.mu_max = 1e100;
net8.divideParam.trainRatio = 1;
net8.divideParam.valRatio = 0;
net8.divideParam.testRatio = 0;
net8 = train(net8,D8,X8);
Y8 = net8(D8);

net10 = newff(D10,X10,10);
net10.trainParam.goal = 1e-30;
net10.trainParam.min_grad = 1e-30;
net10.trainParam.mu_max = 1e100;
net10.divideParam.trainRatio = 1;
net10.divideParam.valRatio = 0;
net10.divideParam.testRatio = 0;
net10 = train(net10,D10,X10);
Y10 = net10(D10);

net11 = newff(D11,X11,10);
net11.trainParam.goal = 1e-30;
net11.trainParam.min_grad = 1e-30;
net11.trainParam.mu_max = 1e100;
net11.divideParam.trainRatio = 1;
net11.divideParam.valRatio = 0;
net11.divideParam.testRatio = 0;
net11 = train(net11,D11,X11);
Y11 = net11(D11);

net12 = newff(D12,X12,10);
net12.trainParam.goal = 1e-30;
net12.trainParam.min_grad = 1e-30;
net12.trainParam.mu_max = 1e100;
net12.divideParam.trainRatio = 1;
net12.divideParam.valRatio = 0;
net12.divideParam.testRatio = 0;
net12 = train(net12,D12,X12);
Y12 = net12(D12);

% net1=net;
% figure 
% plot(X1,'r'); hold on; plot(Y1,'b');
% grid on
% figure 
% plot(X2,'r'); plot(Y2,'b');