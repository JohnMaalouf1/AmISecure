def brute_force(knownPassword):
    possibleChars = " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~";
    testPass = ""
    while(testPass != knownPassword):
        for i in range(len(possibleChars)):
            testChar = possibleChars[i]
            print(testChar)
            if testChar == knownPassword[len(testPass)]:
                testPass += testChar
                break;
    print("Cracked Password: " + testPass)
password = str(input("Please enter your password: "))
if (password != ""):
    brute_force(password)

