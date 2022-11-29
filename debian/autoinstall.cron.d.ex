#
# Regular cron jobs for the autoinstall package
#
0 4	* * *	root	[ -x /usr/bin/autoinstall_maintenance ] && /usr/bin/autoinstall_maintenance
