mkdir TSB_DL
git clone --filter=blob:none --no-checkout https://github.com/ProjectTSB/TheSkyBlessing TSB_DL
cd TSB_DL
git sparse-checkout set NaturalMergeSort OhMyDat ScoreToHealth
git checkout
mv -nv NaturalMergeSort OhMyDat ScoreToHealth ../
cd ../
rm -rfv TSB_DL
