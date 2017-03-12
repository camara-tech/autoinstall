#!/bin/bash

function run_autoinstall() {

for line in $(cat /proc/cmdline);
do
    if [[ "$line" == *"ks="* ]]
    then
        autoinstall_source=${line#ks=}
        [[ "$autoinstall_source" =~ ^/ ]] && source ${autoinstall_source}

       ### A word of caution, the following is equivalent to blindly downloading and running code. Be confident that you won't break the chain of trust before using.
       # [[ "$autoinstall_source" =~ /^https/ ]] && curl ${autoinstall_source} > /tmp/autoinstall.script && sh /tmp/autoinstall.script

    fi
done
}

run_autoinstall

