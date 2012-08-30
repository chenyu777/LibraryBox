#!/bin/sh
echo "Press return, or enter custom path to /librarybox"
read usrpath

if [ "$usrpath" = "" ]
then
  path="/mnt/usb/librarybox"
else
  path="$usrpath"
fi
echo "Copying from $path"
echo "Making your LibraryBox..."

cp $path/droopy /opt/piratebox/bin/;
cp $path/hosts /opt/piratebox/conf/;
cp $path/index.html /opt/piratebox/chat/;
cp $path/piratebox-logo-small.png /opt/piratebox/src/;
cp $path/piratebox-logo.png /opt/piratebox/src/;
cp $path/piratebox.nochat.conf /opt/piratebox/conf/;
mv /opt/piratebox/conf/piratebox.nochat.conf /opt/piratebox/conf/piratebox.conf
cp $path/wireless /etc/config/wireless/;

cp $path/READ.ME.htm /opt/piratebox/src/; 
mv /opt/piratebox/src/READ.ME.htm /opt/piratebox/src/.READ.ME.htm;

echo "Done! Enjoy your LibraryBox!"