%% Disk-Shaped Area-Preserving Parameterization
%
% Main program:
% [uv, Iter, VB, VI] = DiskAEM(F, V, Options)
% 
% Required Input:
% F: #F x 3 triangulations of an open triangle mesh
% V: #V x 3 vertex coordinates of an open triangle mesh
%
% Optional Input:
% Options.MaxIter: the maximum iterative number (default: 200)
% Options.Tol: the tolerance of stoping criteria (default: 1e-6)
%
% Output:
% uv: #V x 2 vertex coordinates of the disk-shaped area-preserving map
% Iter: number of iterations
% VI: indices of interior vertices
% VB: indices of boundary vertices
% 
% Remark:
% If you use this code in your own work, please cite the following paper:
% [1] S.-Y. Liu, and M.-H. Yueh, "Convergent Authalic Energy Minimization 
%     for Disk Area-Preserving Parameterizations"
% doi: 10.1007/s10915-024-02594-2
%
% Copyright (c), Shu-Yung Liu and Mei-Heng Yueh


%% Example: Chinese Lion
clear; clc;
load('ChineseLion.mat')

uv = DiskAEM(F, V);

area_distortion(F, V, uv);

plot_mesh(F, V);
title('Original Surface');
plot_mesh(F, uv);
title('Area-Preserving Map');
