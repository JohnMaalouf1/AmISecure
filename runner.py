import sys
import time
seconds = sys.argv[1]
time.sleep(int(seconds))
print("runner sleep {} seconds.".format(seconds))
