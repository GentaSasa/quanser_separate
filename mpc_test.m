%mpc_tutorial

A = [-5,-0.3427;47.68,2.78];
B = [0 1;0.3 0];
C = flipud(eye(2));
D = zeros(2);
test = ss(A,B,C,D);
test.InputName = {'T_c','C_A_f'};
test.OutputName = {'T','C_A'};
test.StateName = {'C_A','T'};

test.InputUnit = {'deg K','kmol/m^3'};
test.OutputUnit = {'deg K','kmol/m^3'};
test.StateUnit = {'kmol/m^3','deg K'};
mpcobj = mpc(test,0.5);
%mpcobj.MV.Min = -10;






