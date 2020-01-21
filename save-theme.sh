
DIR=$HOME/Pictures/Wallpapers

if [ -n "$1" ]; then
	if [ -f "$DIR/$1.png" ]; then
		# Image already exists
		echo "A theme with that name already exists"
	else
		if [ -f "$DIR/$1.jpg" ]; then
			# Image already exists
			echo "A theme with that name already exists"
		else
			# Save image
			echo "Saving image..."
			cp "$DIR/today" "$DIR/$1.png"
			echo "Theme saved as $1"
		fi
	fi
else
	echo "No name provided for this theme"
	echo "Run this command as 'savetheme name-of-theme'"
fi
