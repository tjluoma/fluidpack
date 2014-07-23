#!/bin/zsh
# package up a Fluid.app to move from one to another
#
# From:	Timothy J. Luoma
# Mail:	luomat at gmail dot com
# Date:	2013-05-10

NAME="$0:t:r"

if [ "$#" != "1" ]
then

	echo "$NAME: Must give one arg: the name of the Fluid.app (without the '.app' part!)"
	exit 1
fi

FLUID_BROWSER_NAME="$@"

SAVE_TO="$HOME/Desktop"

FULL_APP_PATH="/Applications/${FLUID_BROWSER_NAME}.app/Contents/MacOS/FluidApp"

APP_SUPPORT="$HOME/Library/Application Support/Fluid/FluidApps/${FLUID_BROWSER_NAME}"

PREFS="$HOME/Library/Preferences/com.fluidapp.FluidApp.${FLUID_BROWSER_NAME}.plist"

for i in "$FULL_APP_PATH" "$APP_SUPPORT" "$PREFS"
do
	if [ ! -e "$i" ]
	then
		echo "	$NAME: $i does not exist"
		exit 1
	fi
done

tar -c -j -P -v -f "$SAVE_TO/$FLUID_BROWSER_NAME.$NAME.tar.bz2" "$FULL_APP_PATH:h:h:h" "$APP_SUPPORT" "$PREFS"


exit
#
#EOF
