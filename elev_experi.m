% 09/21 elavation軸に対する実験(Model Verification)

%A_e = [0,1;-1.283,-0.11];
A_e = [0,1;0,-0.11];
B_e = [0,0;0.655,0];
%C_e = [1,0;0,1];
%C_e = [1,0;0,0];
C_e = [1,0];
%D_e = [0,0;0,0];
D_e = [0,0];
%ts = 0.1;
ts = 0.1;
%t = 0:0.01:1;
%tFinal = 1;
%x0 = [-0.7,0.0];
%x0 = [-30,0.0];


statename = {'fai','fai_dot'};
inputname = {'usum','udiff'};
%outputname = {'Fai','Fai_Dot'};
outputname = {'Fai'};

sys = ss(A_e,B_e,C_e,D_e,ts,'StateName',statename,'InputName',inputname,'OutputName',outputname);


%[y,t,x] = initial(sys,x0,t);
%initial(sys,x0)

opt = stepDataOptions('InputOffset',-0.7,'StepAmplitude',3.2);

%opt = stepDataOptions('InputOffset',-1,'StepAmplitude',0.0032);

%[y,t] = step(sys,opt)
%step(sys)

step(sys,opt)
%step(sys,tFinal)
%y = step(sys,t);

