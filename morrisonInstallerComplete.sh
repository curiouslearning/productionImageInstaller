su
mkdir /data/data/com.morrison.applocklite/databases
busybox cp /sdcard/applock/applock.db /data/data/com.morrison.applocklite/databases/
chown u0_a60 /data/data/com.morrison.applocklite/databases/applock.db
chmod 600 /data/data/com.morrison.applocklite/databases/applock.db

#Applocklite data

mkdir /data/data/com.morrison.applocklite/shared_prefs
busybox cp /sdcard/applock/com.morrison.applocklite_preferences.xml  /data/data/com.morrison.applocklite/shared_prefs/
busybox cp /sdcard/applock/gr_pref.xml /data/data/com.morrison.applocklite/shared_prefs/


chown u0_a60 /data/data/com.morrison.applocklite/shared_prefs/com.morrison.applocklite_preferences.xml
chmod 600 /data/data/com.morrison.applocklite/shared_prefs/com.morrison.applocklite_preferences.xml

chown u0_a60 /data/data/com.morrison.applocklite/shared_prefs/gr_pref.xml
chmod 600 /data/data/com.morrison.applocklite/shared_prefs/gr_pref.xml