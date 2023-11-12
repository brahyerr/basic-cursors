#!/bin/bash
# ---------------------------------------------------------------------------- #
# Basic X Cursor Theme - White
# Copyright (C) 2010 Didier Chaize
# ---------------------------------------------------------------------------- #
# SCRIPT       : build.sh
# DESCRIPTION  : Generate cursor files with xcursorgen, then duplicate and
# . . . . . .    make links for GNOME 2.28 and XFCE 4.6 environments
# DATE         : 2010-06-18
# AUTHOR       : D. Chaize (didier.chaize@gmail.com)
# REVISION     : 0.9.5
# ---------------------------------------------------------------------------- #
# rev. 0.9.5   : Replace copies by links, add more links from ComixCursors theme
# rev. 0.8     : check files and rename X Cursor Theme
# rev. 0.7     : drawn and validation  of theme basic-white
# ---------------------------------------------------------------------------- #
cursor_theme="Basic X Cursor Theme - White"

# Output directory
outdir="../cursors"

# Create $outdir directory or clean it
if test ! -d $outdir;
then 
  mkdir $outdir
else
  rm -rf $outdir
  mkdir $outdir
fi

# Generate cursors from png files, defined by .in file
for cursor in $(ls *.in | sed 's/\.in//')
do
	xcursorgen ./$cursor.in $outdir/$cursor
	if [[ $? != 0 ]]
	then
		echo "xcursorgen	$cursor"
		echo "Erreur	$cursor"
	fi
done

cd $outdir

ln -s ./based_arrow_up		./base_arrow_up
ln -s ./based_arrow_down	./base_arrow_down
ln -s ./center_ptr			./centre_ptr
ln -s ./dotbox				./dot_box_mask
ln -s ./dotbox				./draped_box
ln -s ./dotbox				./icon
ln -s ./crosshair			./target
ln -s ./hand1				./hand
ln -s ./hand1				./hand2
ln -s ./question_arrow		./help
ln -s ./question_arrow		./left_ptr_help
ln -s ./watch				./left_ptr_watch
ln -s ./left_ptr			./top_left_arrow
ln -s ./right_ptr			./draft_large
ln -s ./right_ptr			./draft_small
ln -s ./right_ptr			./arrow
ln -s ./sb_h_double_arrow 	./h_double_arrow
ln -s ./sb_v_double_arrow 	./double_arrow
ln -s ./sb_v_double_arrow 	./v_double_arrow
ln -s ./sb_up_arrow			./center_ptr
ln -s ./X_cursor			./cross_reverse
ln -s ./X_cursor			./diamond_cross
ln -s ./X_cursor			./pirate

ln -s ./sb_h_double_arrow	./14fef782d02440884392942c11205230
ln -s ./sb_h_double_arrow	./043a9f68147c53184671403ffa811cc5
ln -s ./sb_v_double_arrow	./2870a09082c103050810ffdffffe0204
ln -s ./sb_v_double_arrow	./c07385c7190e701020ff7ffffd08103c
ln -s ./bd_double_arrow		./c7088f0f3e6c8088236ef8e1e3e70000
ln -s ./bd_double_arrow		./38c5dff7c7b8962045400281044508d2
ln -s ./fd_double_arrow		./fcf1c3c7cd4491d801f1e1c78f100000
ln -s ./fd_double_arrow		./50585d75b494802d0151028115016902
ln -s ./ns-resize			./00008160000006810000408080010102
ln -s ./ew-resize			./028006030e0e7ebffc7f7070c0600140
ln -s ./hand1				./e29285e634086352946a0e7090d73106
ln -s ./fleur				./4498f0e0c1937ffe01fd06f973665830
ln -s ./fleur				./9d800788f1b08800ae810202380a0822
ln -s ./fleur				./9081237383d90e509aa00f00170e968f
ln -s ./grab				./5aca4d189052212118709018842178c0
ln -s ./grabbing			./208530c400c041818281048008011002
ln -s ./link				./640fb0e74195791501fd1ed57b41487f
ln -s ./link				./3085a0e285430894940527032f8b26df
ln -s ./link				./0876e1c15ff2fc01f906f1c363074c0f
ln -s ./copy 				./6407b0e94181790501fd1e167b474872
ln -s ./copy 				./1081e37283d90000800003c07f3ef6bf
ln -s ./copy 				./08ffe1cb5fe6fc01f906f1c063814ccf
ln -s ./circle				./03b6e0fcb3499374a867c041f52298f0
ln -s ./question_arrow		./d9ce0ab605698f320427677b458ad60b
ln -s ./question_arrow		./5c6cd98b3f3ebcb1f9c7f1c204630408
ln -s ./watch				./0426c94ea35c87780ff01dc239897213
ln -s ./watch				./9116a3ea924ed2162ecab71ba103b17f
ln -s ./watch				./3ecb610c1bf2410f44200f48c40d3599
ln -s ./watch				./08e8e1c95fe2fc01f976f1e063a24ccd
ln -s ./crossed_circle		./03b6e0fcb3499374a867d041f52298f0
ln -s ./vertical-text		./048008013003cff3c00c801001200000
ln -s ./zoom-in				./f41c0e382c94c0958e07017e42b00462
ln -s ./zoom-out			./f41c0e382c97c0938e07017e42800402
ln -s ./context-menu		./08ffe1e65f80fcfdf9fff11263e74c48

cd -


# ---------------------------------------------------------------------------- #
# End of make
# ---------------------------------------------------------------------------- #
echo "$cursor_theme"
echo "Done!"


