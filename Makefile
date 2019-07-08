main:
	kile report.kilepr & evince report.pdf &

copy:
	echo -n "EAR,PER,SPA,PCA,AD" | xargs -I {} -d, rsync -a ../code/figures/mriAllGaussUnifDir{} images/ebm/;
	echo -n "EAR,PER,SPA,PCA,AD" | xargs -I {} -d, rsync -a ../code/figures/mriLargeGaussUnifDir{} images/ebm/;
	cp ../diffEqModel/matfiles/mriSmallSebPaper_DEMStdPCA/trajAlign.png images/dem/mriSmallSebPaper_DEMStdPCA_trajAlign.png
	cp ../diffEqModel/matfiles/mriSmallSebPaper_DEMStdAD/trajAlign.png images/dem/mriSmallSebPaper_DEMStdAD_trajAlign.png
	cp ../diffEqModel/matfiles/mriSmallSebPaper_DEMStdPCA/subplotsPcaAd.png images/dem/mriSmallSebPaper_DEMStd_subplotsPcaAd.png
