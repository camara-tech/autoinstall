# Auto Install

A simple, perhaps overly-simplistic, 'auto-install' script for Linux. 

My goal for this project is to tweak the existing Arch Linux boot disk so that I can trigger an automated install after PXE booting ArchLinux, similar to Ubuntu preseed or RedHat kickstart.

This works by reading /proc/cmdline and attempting to execute whatever is assigned to the "ks" parameter.
