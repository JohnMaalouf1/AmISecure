pass="a"
parallel --will-cite -k --dry-run --halt now,success=1 ./1.py "$pass" ::: ./2.py "$pass" ::: ./3.py "$pass" ::: ./4.py "$pass" ::: ./5.py "$pass" ::: ./6.py "$pass" ::: ./7.py "$pass" ::: ./8.p "$pass" ::: ./9.py "$pass"

