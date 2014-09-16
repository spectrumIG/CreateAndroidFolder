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
DRAWABLE_SUF="drawable-"
LAYOUT_SUF="layout-"

show_menu_choice (){
choice=$(zenity --list --text "Choose which type of folders to create" --radiolist --column="Choices" --column="Type" TRUE "drawable" FALSE "layout")

}

show_window_for_density (){
	density=$(zenity --list --width="460" --height="300" --title="Number of folders" --checklist --column="Density" --column="" FALSE "ldpi" FALSE "mdpi" FALSE "hdpi" FALSE "xhdpi" FALSE "xxhdpi" FALSE "xxxhdpi" FALSE "tvdpi" --separator=':')
}

show_window_for_layout (){
	layout=$(zenity --list --width="460" --height="300" --title="Number of folders" --checklist --column="Density" --column="" FALSE "ldpi" FALSE "mdpi" FALSE "hdpi" FALSE "xhdpi" FALSE "xxhdpi" FALSE "xxxhdpi" FALSE "tvdpi" --separator=':')

}

create_drawable (){
IFS=":"
for word in $density
do
	`mkdir $NAUTILUS_SCRIPT_CURRENT_URI/$DRAWABLE_SUF$word`

done
}

create_layout (){
IFS=":"
for word in $layout
do
	`mkdir $NAUTILUS_SCRIPT_CURRENT_URI/$LAYOUT_SUF$word`

done
}

#################################################################
#################################################################
show_menu_choice

case $choice in
layout)
	show_window_for_layout
	create_layout
	;;
drawable)
show_window_for_density
	create_drawable
	;;
esac
