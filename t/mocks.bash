function cat() {
    echo "cat received ${@}" 
    echo $@ | grep /proc/cmdline && echo "ks=${PWD}/t/fixtures/run.sh" || cat ${@}

}
