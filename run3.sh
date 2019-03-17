pass="aa"
cracked1=sudo python3 "/home/michael/SecurityVisualized/1.py" $pass 2>&1
cracked2=sudo python3 "/home/michael/SecurityVisualized/2.py" $pass 2>&1

if [[ "$cracked1" -ne "" ]]; then
	sudo killall -9 python3
	#echo $cracked1
       #trap "cracked1" EXIT
fi


