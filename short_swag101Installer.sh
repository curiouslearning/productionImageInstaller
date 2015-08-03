su  
  
pm set-install-location 2  
  
pm install -s /mnt/external_sd/swagApps/BMA_CO.Phonics_Lv1_Unit10-1.apk  
pm install -s /mnt/external_sd/swagApps/russh.toddler.shapes-1.apk  
pm install -s /mnt/external_sd/swagApps/uk.co.readwritephonics-1.apk  
pm install -s /mnt/external_sd/swagApps/zok.android.shapes-1.apk  
  
pm set-install-location 0  
pm install -f /mnt/external_sd/swagApps/funfFileMover.apk  
pm install -f /mnt/external_sd/swagApps/edu.media.mit.prg.launcher-1.apk  
  
su  
mount -o remount,rw -t ext4 /system  
  
busybox cp /mnt/external_sd/swagApps/systemApps/* /system/app  
  
# Reboot to complete install  
reboot  

reboot


