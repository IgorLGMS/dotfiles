DIR=$HOME/Pictures/wallpapers

if [ -n "$1" ]; then
	if [ -f "$DIR/$1.png" ]; then
		# generate colors palette from argument
		wal -i "$DIR/$1.png" || echo "Failed set image"
	else
		if [ -f "$DIR/$1.jpg" ]; then
			# generate colors palette from argument
			wal -i "$DIR/$1.jpg" || echo "Failed set image"
		else
			# generate colors palette from argument
			wal -i "$DIR/$1" || echo "Failed set image"
		fi
	fi
else

# fetch random wallpaper from unsplash
curl -o "$DIR/today" -J -L "https://source.unsplash.com/random/3840x2160" > /dev/null 2>&1

# remove manually wal cache
rm -rf "$HOME/.cache/wal"

# generate colors palette, skip setting wallpaper
wal -i "$DIR/today"

fi

# restart the Dock else the wallpaper wouldn't apply
#killall Dock
