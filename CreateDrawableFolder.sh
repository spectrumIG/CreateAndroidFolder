#!/bin/bash
# ---------------------------------------------------------------------------
# CreateDrawableFolder - Nautilus scrop

# Copyright 2014, Daniele Andreoli

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License at <http://www.gnu.org/licenses/> for
# more details.




density=$(zenity  --list  --title="Number of folders" --checklist --column="Density" --column="" FALSE "ldpi" FALSE "mdpi" FALSE "hdpi" FALSE "xhdpi" FALSE "xxhdpi" FALSE "xxxhdpi" FALSE "tvdpi" --separator=':')

IFS=":"
for word in $density
do
	case $word in
	  ldpi) echo Item A ;;
      mdpi) echo Item B ;;
      hdpi) echo Item C ;;
     esac
done
