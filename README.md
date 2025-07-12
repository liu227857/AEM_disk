# Disk-Shaped Area-Preserving Parameterization

<img src="images/Lion_M.png" width="45%" align="left" />
<img src="images/Lion_uv.png" width="45%" />

<br clear="both" />

This repository provides an implementation of a **convergent energy minimization method** for **disk-shaped area-preserving parameterization** of open triangular meshes.

If you use this code in your own work, please cite the following paper:

> [1] **S.-Y. Liu** and **M.-H. Yueh**,  
> *Convergent Authalic Energy Minimization for Disk Area-Preserving Parameterizations*,  
> [DOI: 10.1007/s10915-024-02594-2](https://doi.org/10.1007/s10915-024-02594-2)


This software is released for academic and research purposes only.
Commercial use is not permitted without prior written permission from the authors.
© Copyright (c) 2024, Shu-Yung Liu, Mei-Heng Yueh

---

## Main Function

*`[uv, Iter, VB, VI] = DiskAEM(F, V, Options)`

Required Input:
`F`: `#F x 3` triangulations of an open triangle mesh
`V`: `#V x 3` vertex coordinates of an open triangle mesh

Optional Input:
`Options.MaxIter`: the maximum iterative number (default: 200)
`Options.Tol`: the tolerance of stopping criteria (default: 1e-6)

Output:
`uv`: `#V x 2` vertex coordinates of the disk-shaped area-preserving map
`Iter`: number of iterations
`VI`: indices of interior vertices
`VB`: indices of boundary vertices
