import os, signal

def kill(name):
    for line in os.popen("ps ax | grep " + name + " | grep -v grep"):
        fields = line.split()
        pid = fields[0]
        os.kill(int(pid), signal.SIGKILL)

#kill("python3")
