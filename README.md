`antsASLProcessing.sh` performs ASL processing based on ANTs tools.  Preprocessing of T1 images using antsCorticalThickness.sh is assumed.  The following steps are performed: 
1. Calculation of average pCASL image. 
2. Skull stripping of average pCASL image. 
3. Registration of average pCASL image to T1 image. 
4. (Robust) calculation of mean CBF. 
5. Warping tissue priors and labels to ASL space.
6. Warping mean CBF image to template space for VBM analysis.

Usage: 
Required arguments: 
```bash 
antsASLProcessing.sh -a anatomical image (skull stripped)  
              -p brain segmentation priors (C-style, e.g. priors%d.nii.gz) 
              -x t1 brain mask
              -s raw pCASL image 
              -e brain template
	      -l template labels
              -t skull-stripped t1 to template transform prefix 
              -o output prefix
```
Optional arguments: 
```bash
              -b blood T1 value (defaults to 0.67 s^-1) 
	      -r robustness parameter (defaults to 0.95)             
	      -h print help and exit
```
For an example usage, see `process.sh`.  Data can be downloaded from https://dl.dropboxusercontent.com/u/25867023/asl_data.tgz. 
