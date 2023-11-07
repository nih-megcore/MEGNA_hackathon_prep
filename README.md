# MEGNA_hackathon_prep

## Log into helix
```
datalad_pull.sh  <<TASK>>   #Download the single task specific datasets and remove the rest of DL skeleton
fix_hv_dsets.py   #Remove extra MRIs to work with mne_bids
add_fs_data.sh <<TASK>>   #PUll the freesurfer recons into derivatives folder
```
## Prep the fwd model
```
module load mne
for dset in $(find sub-* -name '*.ds'); do megcore_prep_mri_bids.py -filename $(pwd)/${dset}; done
```
## Tar/zip file
```
tar -czvf <<TASK>>.tar.gz <<TASK>>
```

