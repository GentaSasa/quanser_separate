%matlab内のファイルのロードとsimulinkの起動用のファイル

clc
clearvars
close all

disp("start pitch axis");

%disp('load pitch_param');
%load 'pitch_param'

disp('pitch_ref');%pitch軸の参照軌道
pitch_ref

%disp('load pitch_mpc');%mpcの設定
%pitch_mpc

disp('load simulink');
open_system('pitch_only')

%disp('start simulink');
%sim('pitch_only.slx')
