pass="aa"
trap "exit 1" TERM
export TOP_PID=$$
export last=$!
exitcode=1

abort(){
exit
}
crack1(){
cracked1=$(sudo python3 "/home/michael/SecurityVisualized/1.py" $pass 2>&1)
if [$cracked1 -ne $exitcode]; then
       echo cracked1
       abort
fi       
}
crack2(){
cracked2=$(sudo python3 /home/michael/SecurityVisualized/2.py $pass 2>&1)
if [$cracked2 -ne $exitcode]; then
       echo cracked2
       abort
fi
}
crack3(){
cracked3=$(sudo python3 /home/michael/SecurityVisualized/3.py $pass 2>&1)
if [$cracked3 -ne $exitcode]; then
       echo cracked3
       abort
fi
}
crack4(){
cracked4=$(sudo python3 /home/michael/SecurityVisualized/4.py $pass 2>&1)
if [$cracked4 -ne $exitcode]; then
       echo cracked4
       abort
fi
}
crack5(){
cracked5=$(sudo python3 /home/michael/SecurityVisualized/5.py $pass 2>&1)
if [$cracked5 -ne $exitcode]; then
       echo cracked5
       abort
fi
}
crack6(){
cracked6=$(sudo python3 /home/michael/SecurityVisualized/6.py $pass 2>&1)
if [$cracked6 -ne $exitcode]; then
       echo cracked6
       abort
fi
}
crack7(){
cracked7=$(sudo python3 /home/michael/SecurityVisualized/7.py $pass 2>&1)
if [$cracked7 -ne $exitcode]; then
       echo cracked7
       abort
fi
}
crack8(){
cracked8=$(sudo python3 /home/michael/SecurityVisualized/8.py $pass 2>&1)
if [$cracked8 -ne $exitcode]; then
       echo cracked8
       abort
fi
}
crack9(){
cracked9=$(sudo python3 /home/michael/SecurityVisualized/9.py $pass 2>&1)
if [$cracked9 -ne $exitcode]; then
       echo cracked9
       abort
fi
}
crack10(){
cracked10=$(sudo python3 /home/michael/SecurityVisualized/10.py $pass 2>&1)
if [$cracked10 -ne $exitcode]; then
       echo cracked10
       abort
fi
}
num="$10"
crack1 $1 &
crack2 $2 &
crack3 $3 &
crack4 $4 &
crack5 $5 &
crack6 $6 &
crack7 $7 &
crack8 $8 &
crack9 $9 &
#crack10 $num &
