#!/bin/zsh
# unpackage a *.fluidpkg.tar.bz2 file
#
# From:	Timothy J. Luoma
# Mail:	luomat at gmail dot com
# Date:	2013-05-14

NAME="$0:t:r"

SUFFIX='fluidpkg.tar.bz2'

for i in "$@"
do

	i=($i(:A))

	NAMECHECK=$(echo "$i" | fgrep -v "$SUFFIX")

	if [ "$NAMECHECK" != "" ]
	then
			echo "	$NAME: $i is not a $SUFFIX file"
			exit 1
	fi

		# -x 	Extract to disk from the archive.
		# -v 	verbose
		# -f 	file
		# -p 	Preserve file permissions.
		# -k 	Do not overwrite existing files.

		# -P 	Preserve pathnames. !!! NOTE !!!
	cd /

	if [ -e "$i" ]
	then
			tar -k -P -p -v -x -f "$i"
	fi

done


fini 2>/dev/null || exit
#
#EOF
