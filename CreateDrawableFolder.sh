#!bin/bash


DENSITY=$(zenity  --list  --title="Number of folders" --checklist --column="Density" --column="" FALSE "ldpi" FALSE "mdpi" FALSE "hdpi" FALSE "xhdpi" FALSE "xxhdpi" FALSE "xxxhdpi" FALSE "tvdpi" --separator=":")
echo $DENSITY
density=($DENSITY)

for i in "${#density[@]}"
do
	$(mkdir `pwd`/${density[$i]})
done
