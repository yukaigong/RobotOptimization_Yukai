function [] = set_paths(MODEL_PATH, IPOPT_PATH)
%% Script to set paths
addpath(genpath(MODEL_PATH))
addpath(genpath(IPOPT_PATH))
addpath(genpath('../../common'))
addpath(genpath([pwd,'/config']))
addpath(genpath([pwd,'/function_wrappers']))
addpath('utils')
addpath(genpath('gen'))
addpath_matlab_utilities('general', 'strings', 'yaml', 'ros', 'sim', 'plot', 'validation');


end