function [ J ] = call_mathematica_Jacobian( f_name, J, input, numRows )
%CALL_MATHEMATICA_JACOBIAN Wrapper to call the mathematica generated
%jacobian functions. 

% Author - Ross Hartley
% Date   - 3/2/2017

f_name_1_root = ['J_', f_name]; % Evaluates row of jacobian matrix
f_name_2_root = ['Js_', f_name]; % Gets non-zero jacobian indices

if numRows > 0
    % Call the functions to evaluate each row
    for i = 1:numRows
        f_name_1 = [f_name_1_root,num2str(i)];
        f_name_2 = [f_name_2_root,num2str(i)];

        % Call functions
        tmp1 = feval(f_name_1,input);
        tmp2 = feval(f_name_2,0);
        J(i,tmp2(:,2)) = tmp1; % Construct Jacobian
    end
else
    % Simply evaluate Jacobian
    tmp = feval(f_name_1_root,input);
    tmp2 = feval(f_name_2_root,0);
    for i = 1:size(tmp2,1)
        J(tmp2(i,1),tmp2(i,2)) = tmp(i); % Construct Jacobian
    end
end
end

