echo "Setting up x11vnc"
#x11vnc -xkb -noxrecord -noxfixes  -ncache 10 -ncache_cr -noxdamage -display :0 -auth /var/run/lightdm/root/:0
x11vnc -xkb -repeat -noxrecord -noxfixes -noncache -noxdamage -display :0 -auth /var/run/lightdm/root/:0 -geometry 1600x900
