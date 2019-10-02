#!/bin/bash

#@author: Ankit Pant

cd /home/maven/Sem_I/Operating_System/Assignment/Assignment_3/pintos/src/threads/build/
if [ $# -eq 1 ]
then
    if [ "$@" == "-v" ]
    then
        make tests/threads/alarm-single.result VERBOSE=1
        make tests/threads/alarm-zero.result VERBOSE=1
        make tests/threads/alarm-negative.result VERBOSE=1
        make tests/threads/alarm-simultaneous.result VERBOSE=1
        make tests/threads/alarm-multiple.result VERBOSE=1
        make tests/threads/alarm-priority.result VERBOSE=1
        make tests/threads/priority-change.result VERBOSE=1
        make tests/threads/priority-fifo.result VERBOSE=1
        make tests/threads/priority-sema.result VERBOSE=1
        make tests/threads/priority-condvar.result VERBOSE=1
        #'Bonus' Test-cases
        # make tests/threads/mlfqs-load-1.result VERBOSE=1
        # make tests/threads/mlfqs-load-60.result VERBOSE=1
        # make tests/threads/mlfqs-load-avg.result VERBOSE=1
        # make tests/threads/mlfqs-recent-1.result VERBOSE=1
        # make tests/threads/mlfqs-fair-2.result VERBOSE=1
        # make tests/threads/mlfqs-fair-20.result VERBOSE=1
        # make tests/threads/mlfqs-nice-2.result VERBOSE=1
        # make tests/threads/mlfqs-nice-10.result VERBOSE=1
        # make tests/threads/mlfqs-block.result VERBOSE=1
    else
        echo "Invalid argument"
    fi
else
    make tests/threads/alarm-single.result | grep -E -i "pass|fail"
    make tests/threads/alarm-zero.result | grep -E -i "pass|fail"
    make tests/threads/alarm-negative.result | grep -E -i "pass|fail"
    make tests/threads/alarm-simultaneous.result | grep -E -i "pass|fail"
    make tests/threads/alarm-multiple.result | grep -E -i "pass|fail"
    make tests/threads/alarm-priority.result | grep -E -i "pass|fail"
    make tests/threads/priority-change.result | grep -E -i "pass|fail"
    make tests/threads/priority-fifo.result | grep -E -i "pass|fail"
    make tests/threads/priority-sema.result | grep -E -i "pass|fail"
    make tests/threads/priority-condvar.result | grep -E -i "pass|fail"
     #'Bonus' Test-cases
        # make tests/threads/mlfqs-load-1.result | grep -E -i "pass|fail"
        # make tests/threads/mlfqs-load-60.result | grep -E -i "pass|fail"
        # make tests/threads/mlfqs-load-avg.result | grep -E -i "pass|fail"
        # make tests/threads/mlfqs-recent-1.result | grep -E -i "pass|fail"
        # make tests/threads/mlfqs-fair-2.result | grep -E -i "pass|fail"
        # make tests/threads/mlfqs-fair-20.result | grep -E -i "pass|fail"
        # make tests/threads/mlfqs-nice-2.result | grep -E -i "pass|fail"
        # make tests/threads/mlfqs-nice-10.result | grep -E -i "pass|fail"
        # make tests/threads/mlfqs-block.result | grep -E -i "pass|fail"
fi