function [data, input_name] = loadtest
%LOADGAS Load data file for automobile MPG (miles per gallon) prediction
% Copyright 1994-2002 The MathWorks, Inc. 
% $Revision: 1.8 $

%	Roger Jang, August 1997

% ====== Get data from original data file

%fprintf('Getting data from file ''%s''...\n', data_file);

A=csvread('air.txt')
raw_data = zeros(653, 13);
i = 1;
for i= 1:653
	
	
		raw_data(i, :) = A(i, :);

	
end



data = [raw_data(:, 1:10) raw_data(:, 11)];
% ======variable names


input_name = ...
	str2mat('CO','Tin','NMHC','Benzene','Titania','NOx','TungstenS3','NO2','TungstenS4','Indium','T');

% ====== Do linear regression
%trn_data = data(1:2:end, :);
%chk_data = data(2:2:end, :);
%fprintf('Doing linear regression...\n'); 
%fprintf('Linear regression with %d linear parameters:\n', size(data, 2)); 
%A_trn = [trn_data(:, 1:size(data,2)-1) ones(size(trn_data,1), 1)]; 
%B_trn = trn_data(:, size(data,2));
%coef = A_trn\B_trn;
%trn_error = norm(A_trn*coef-B_trn)/sqrt(size(trn_data,1));
%
%A_chk = [chk_data(:, 1:size(data,2)-1) ones(size(chk_data,1), 1)]; 
%B_chk = chk_data(:, size(data,2));
%chk_error = norm(A_chk*coef-B_chk)/sqrt(size(chk_data,1));
%
%fprintf('\tRMSE for training data: %g\n', trn_error); 
%fprintf('\tRMSE for checking data: %g\n', chk_error); 
