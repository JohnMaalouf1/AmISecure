#!/bin/bash
read pass

start() {                   # function for starting python scripts
#    echo "start $@"         # print which runner is started
    "$@" &                  # start python script in background
    pids+=("$!")            # save pids in array
}

start python3 1.py "$pass"         # start python scripts
start python3 2.py "$pass" 
start python3 3.py "$pass" 
start python3 4.py "$pass" 
start python3 5.py "$pass" 
start python3 6.py "$pass" 
start python3 7.py "$pass" 
start python3 8.py "$pass" 
start python3 9.py "$pass"
start python3 10.py "$pass"  

wait -n "${pids[@]}"           # wait for first finished process
kill "${pids[@]}" 2>/dev/null  # kill all/other process
