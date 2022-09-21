% 09/21 travel軸に対する実験(Model Verification)

A_t = [0,1;0,-0.0247];
B_t = [0,0;0.0087,0];
C_t = [1,0];
D_t = [0,0];
ts = 0.1;
t = 0:0.01:1;
tFinal = 1;
x0 = [-30,0.0];


statename = {'psi','psi_dot'};
inputname = {'usum','udiff'};
outputname = {'psi'};

sys = ss(A_t,B_t,C_t,D_t,ts,'StateName',statename,'InputName',inputname,'OutputName',outputname);


%[y,t,x] = initial(sys,x0,t);
%initial(sys,x0)

opt = stepDataOptions('InputOffset',0,'StepAmplitude',20);

%opt = stepDataOptions('InputOffset',-1,'StepAmplitude',0.0032);

%[y,t] = step(sys,opt)
%step(sys)
step(sys,opt)
%step(sys,tFinal)
%y = step(sys,t);

