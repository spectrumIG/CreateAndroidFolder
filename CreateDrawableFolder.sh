#!/bin/bash
# ---------------------------------------------------------------------------
# CreateDrawableFolder - Nautilus script

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


#################################################################
#
# Show window selection and get the result in an ARRAY!
#
#################################################################

show_window_for_density (){
	density=$(zenity --list --width="460" --height="300" --title="Number of folders" --checklist --column="Density" --column="" FALSE "ldpi" FALSE "mdpi" FALSE 	"hdpi" FALSE "xhdpi" FALSE "xxhdpi" FALSE "xxxhdpi" FALSE "tvdpi" --separator=':')
}

#################################################################
#################################################################
show_window_for_density

IFS=":"
for word in $density
do
	`mkdir ./$word`

done
