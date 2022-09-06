%pitch軸の参照軌道

sampleTime  = 0.01;
numSteps = 1001;
time = sampleTime*(0:numSteps-1);
data = 0.0;
d = 0.5;
%inputdata = timeseries(data,time);
%inputdata = timeseries(d,data);
p_ref = load("data.csv");
A_p = [0,1;0,0];
B_p = [0,0;0,21.6319];
C_p = [1,0;0,1];
D_p = [0,0;0,0];
%save("p_ref","inputdata","-v7.3");%.matファイルで保存
save("p_ref","p_ref","-v7.3");
%plot(data,time);