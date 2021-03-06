 DIR=$HOME/Pictures/wallpapers

# fetch random wallpaper from unsplash
curl -o "$DIR/today" -J -L "https://source.unsplash.com/random/1920x1200" > /dev/null 2>&1

# set wallpaper on all desktop
sqlite3 $HOME/Library/Application\ Support/Dock/desktoppicture.db "UPDATE data SET value='$DIR/today'"

# remove manually wal cache
rm -rf "$HOME/.cache/wal"

# generate colors palette, skip setting wallpaper
wal -i "$DIR/today" -n

# restart the Dock else the wallpaper wouldn't apply
killall Dock
