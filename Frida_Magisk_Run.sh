#!/bin/bash

#Inject frida scripts quickly to apps on devices with MagiskHide enabled

run_proc=$(adb -d shell monkey -p com.facebook.katana 1)
App_ID=$(adb -d shell ps | grep -i 'com.facebook.katana' | awk '{printf $2}')

echo "Attaching to process.."
frida -U -l $1 -p $App_ID
