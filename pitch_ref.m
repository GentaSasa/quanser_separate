%pitch軸の参照軌道

sampleTime  = 0.01;
numSteps = 1001;
time = sampleTime*(0:numSteps-1);
data = sin(2*pi/3*time);

inputdata = timeseries(data,time);
save("sin_wave","inputdata","-v7.3");

