function [ f ] = call_mathematica_Function( f_name, f, input, numRows )
%CALL_MATHEMATICA_JACOBIAN Wrapper to call the mathematica generated
% functions. 

% Author - Ross Hartley
% Date   - 3/2/2017

f_name_root = ['f_', f_name]; % full function name

if numRows > 0 
    % Call the functions to evaluate each row
    for i = 1:numRows
        f_name_row = [f_name_root,num2str(i)];
        % Call function
        f(i,:) = feval(f_name_row,input);
    end
else
    % Simply evaluate function
    f = feval(f_name_root,input);
end
end

