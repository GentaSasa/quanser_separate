% 09/21 pitch軸に対する実験(Model Verification)

A_p = [0,1;0,0];
B_p = [0,0;0,0.248000000000000];
%C_e = [1,0;0,1];
%C_e = [1,0;0,0];
C_p = [1,0];
%D_e = [0,0;0,0];
D_p = [0,0];
%ts = 0.1;
ts = 0.1;
t = 0:0.1:2;

statename = {'theta','theta_dot'};
inputname = {'usum','udiff'};
%outputname = {'Fai','Fai_Dot'};
outputname = {'theta'};

sys = ss(A_p,B_p,C_p,D_p,ts,'StateName',statename,'InputName',inputname,'OutputName',outputname);

%[y,t,x] = initial(sys,x0,t);
%initial(sys,x0)

opt = stepDataOptions('InputOffset',0.0,'StepAmplitude',1.5);

%opt = stepDataOptions('InputOffset',-1,'StepAmplitude',0.0032);

%[y,t,x] = step(sys)
%step(sys,opt)
impulse(sys,opt)
%step(sys)
%y = step(sys,t);
