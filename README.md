# palm_docker

Docker version of Anderson Winkler's Permutation Analysis of Linear Models

PALM is an aggregate of matlab scripts for permutations and sign flipping for the analysis of neuroimaging data. This docker contains those files from the source github (https://github.com/andersonwinkler/PALM) as well as the necessary backend provided by Octave as a free substitute for Matlab.

The user guide can be found at: https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/PALM

# Usage:

The docker requires docker to be installed then all you need is to run:

docker pull lsoussan/palm

or 

docker run lsoussan/palm <your_command_here>

docker run -v $PWD/Data:/input -v $PWD/settings:/settings -v $PWD/output:/output lsoussan/palm -i /input/PA_vs_Group2_Fz_maps.nii -d /settings/PA_vs_Group2.mat -t /settings/PA_vs_Group2.con -o /output/test4_palm -n 1000

# From the software author:

"On the link abovethere is no history about the package itself, so here it goes some. In one way or another, work on a permutation tool has been ongoing for a while, with some of the functions having been loosely written back in 2008, if not earlier. These functions began to be assembled and integrated by mid-2013. Between Oct/2013 and Mar/2014, Git was used locally for version control, but eventually PALM went on without it. Various early alpha versions circulated to collaborators, with the first public release in late Feb/2015 in the FSL website. These releases were, and continue to be, in the form of tarballs. Since all were kept, it was easy to retroactively apply the commits to the same local repository that had been neglected, and finally make it public on GitHub today, 04/Jul/2015. permutation tool has been ongoing for a while, with some of the functions having been loosely written back in 2008, if not earlier. These functions began to be assembled and integrated by mid-2013. Between Oct/2013 and Mar/2014, Git was used locally for version control, but eventually PALM went on without it. Various early alpha versions circulated to collaborators, with the first public release in late Feb/2015 in the FSL website. These releases were, and continue to be, in the form of tarballs. Since all were kept, it was easy to retroactively apply the commits to the same local repository that had been neglected, and finally make it public on GitHub today, 04/Jul/2015."

# References:

The main reference for PALM is the same as for randomise:

    Winkler AM, Ridgway GR, Webster MA, Smith SM, Nichols TE. Permutation inference for the general linear model. NeuroImage, 2014;92:381-397 (Open Access)

For Non-Parametric Combination (NPC; options -npc, -npcmod and -npccon), classical multivariate tests (MANOVA, MANCOVA, CCA; options -mv and -cca) assessed with permutations, and for correction over contrasts and/or modalities (options -corrcon and -corrmod), the reference is:

    Winkler AM, Webster MA, Brooks JC, Tracey I, Smith SM, Nichols TE. Non-Parametric Combination and related permutation tests for neuroimaging. Hum Brain Mapp. 2016 Apr;37(4):1486-511. (Open Access)

For the multi-level exchangeability blocks (options -eb, -vg, and for HCP data), the reference is:

    Winkler AM, Webster MA, Vidaurre D, Nichols TE, Smith SM. Multi-level block permutation. Neuroimage. 2015;123:253-68. (Open Access)

For the accelerated permutation inference (options -accel or -approx), the reference is:

    Winkler AM, Ridgway GR, Douaud G, Nichols TE, Smith SM. Faster permutation inference in brain imaging. Neuroimage. 2016 Jun 7;141:502-516. (Open Access)

For additional theory of permutation tests in neuroimaging, please see and cite:

    Nichols TE, Holmes AP. Nonparametric permutation tests for functional neuroimaging: a primer with examples. Hum Brain Mapp. 2002 Jan;15(1):1-25.

    Holmes AP, Blair RC, Watson JD, Ford I. Nonparametric analysis of statistic images from functional mapping experiments. J Cereb Blood Flow Metab. 1996 Jan;16(1):7-22.

