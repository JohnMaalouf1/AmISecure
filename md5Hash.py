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
<<<<<<< HEAD
            print(pwd)
=======
            counter = counter + 1
            if counter % 100 ==0:
               print(counter)
            #print(pwd)
>>>>>>> fee458a3c1e500e30e3a44dcfd12259f2ea4a057
            yield b''.join(pwd)


def crack(search_hash, encodeType):
    for pwd in passwords(encodeType):
        if md5(pwd).hexdigest() == search_hash:
            print(md5(pwd).hexdigest())
            return pwd.decode(encodeType)

def main():
    encodeType = 0
    while (encodeType != 1 or encodeType != 2):
        encodeType = int(input("Please Choose the encodeType\n[1] ascii \n[2] utf-8 (Has Unicode Support)\nEnter a number: "))
        if encodeType == 1:
            encodeType = 'ascii'
            print("-----------------------------")
            break
        elif encodeType == 2:
            encodeType = 'utf-8'
            print("-----------------------------")
            break

    userInput = 0
    while (userInput != '1' or userInput != '2'):
        userInput = str(input("What Would you like to input\n[1] Password\n[2] Hash: "))
        if userInput == '1':
            userPassword = str(input("Please enter your password: "))
            hashedPassword = md5(userPassword.encode(encodeType)).hexdigest()
            break
        elif userInput == '2':
            hashedPassword = str(input("Please enter your password: "))
            break

    
    start = time()
    cracked = crack(hashedPassword, encodeType)
    end = time()
    print("The Password is " + str(cracked))
    print(f"Time: {end - start} seconds.")

main()
