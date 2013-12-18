#!/bin/bash
antsASLProcessing.sh \
  -a imgs/t1_cerebrum.nii.gz \
  -p imgs/posteriors%d.nii.gz \
  -x imgs/t1_mask.nii.gz \
  -s imgs/pcasl.nii.gz \
  -e template/template.nii.gz \
  -l template/Labels/template_AAL.nii.gz \
  -t imgs/Segmentation \
  -o out/antsASLProcessed

