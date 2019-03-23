from hashlib import md5
from time import time
from itertools import count, product
from string import printable

counter = 0

def passwords(encodeType):
    global counter
    chars = [i.encode(encodeType) for i in printable]
    for length in count(start=1):
        for pwd in product(chars, repeat=length):

            #print(pwd)

            counter = counter + 1
            if counter % 100 ==0:
               print(counter)
            #print(pwd)

            yield b''.join(pwd)


def crack(search_hash, encodeType):
    for pwd in passwords(encodeType):
        if md5(pwd).hexdigest() == search_hash:
            print(md5(pwd).hexdigest())
            return pwd.decode(encodeType)

def main():
    encodeType = 'ascii'

    userPassword = "aaaaa"
    hashedPassword = md5(userPassword.encode(encodeType)).hexdigest()

    
    start = time()
    cracked = crack(hashedPassword, encodeType)
    end = time()
    print("The Password is " + str(cracked))
    print("Time: " + str(end - start) +" seconds.")

main()
