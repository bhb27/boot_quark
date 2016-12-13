#!/system/bin/sh

mount -o remount,rw /;
mount -o rw,remount /system

# busybox auto-install
if [ ! -f /system/xbin/busybox ] && [ ! -f /system/bin/busybox ]; then
	/bootrec/busybox cp -f /bootrec/busybox /system/xbin/busybox
	/bootrec/busybox chown -R root.root /system/xbin/busybox
	/bootrec/busybox chmod -R 755 /system/xbin/busybox
	/system/xbin/busybox --install -s /system/xbin 
fi
rm -f /bootrec/busybox

# sudo
if [ ! -f "/system/xbin/sudo" ]; then
	touch /system/xbin/sudo
	echo 'su -c "$*"' >> /system/xbin/sudo
	chmod 755 /system/xbin/sudo
fi

# init.d support
if [ ! -e /system/etc/init.d ]; then
   mkdir /system/etc/init.d
   chown -R root.root /system/etc/init.d
   chmod -R 755 /system/etc/init.d
fi

# start init.d
for FILE in /system/etc/init.d/*; do
   sh $FILE >/dev/null
done;

rm -rf /boot

exit 0
