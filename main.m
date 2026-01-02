%% Disk-Shaped Area-Preserving Parameterization
%
% Main program:
% [uv, VB, VI] = DiskAEM(F, V)
% 
% Required Input:
% F: #F x 3 triangulations of an open triangle mesh
% V: #V x 3 vertex coordinates of an open triangle mesh
%
% Output:
% uv: #V x 2 vertex coordinates of the disk-shaped area-preserving map
% VB: indices of boundary vertices
% VI: indices of interior vertices
%
% Optional Input:
% DiskAEM( __, "MaxIter", Value): the maximum iterative number (default: 100)
% DiskAEM( __, "Tol", Value): the tolerance of stoping criteria (default: 1e-5)
% 
% Remark:
% If you use this code in your own work, please cite the following paper:
% [1] S.-Y. Liu, and M.-H. Yueh, "Convergent Authalic Energy Minimization 
%     for Disk Area-Preserving Parameterizations"
% doi: 10.1007/s10915-024-02594-2
%
% License:
% This software is released for academic and research purposes only.
% Commercial use is not permitted without prior written permission from the authors.
% Copyright (c), Shu-Yung Liu and Mei-Heng Yueh


%% Example: Bunny
clear; clc;
load('StanfordBunny.mat')

uv = DiskAEM(F, V);

area_distortion(F, V, uv);

plot_mesh(F, V);
title('Original Surface');
plot_mesh(F, uv);
title('Area-Preserving Map');
