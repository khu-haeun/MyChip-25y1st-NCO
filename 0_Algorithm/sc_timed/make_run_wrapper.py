import os

def getResult(fcw): #extract test result from last line of $(FCW).txt
    F_DIR = "./test_vec/"
    F_TYPE = ".txt"
    F_NAME = F_DIR + f"{fcw}" + F_TYPE

    result = 0
    with open(F_NAME, 'rb') as outfile:
        outfile.seek(0, os.SEEK_END)
        currPos = outfile.tell()

        lineCnt = 0
        while currPos > 0 :
            currPos -= 1
            outfile.seek(currPos)
            char = outfile.read(1)
            if char == b'\n':
                lineCnt += 1

            if lineCnt == 2:
                currPos -= 1
                outfile.seek(currPos)
                result = outfile.read(1)
                break

    return result


# gen test case
fcw = 1
fcwList = []
for i in range(21):
    fcwList.append(fcw)
    #fcwList.append(fcw+255)
    fcw <<= 1
fcwList.pop()

# run cmd
for testFCW in fcwList:
    cmd = f"make run FCW={testFCW}"# <-------------------iter exec.
    os.system(cmd)

# test result
cnt = 0
for testFCW in fcwList:
    str = f"FCW={testFCW}"
    if(getResult(testFCW) == b'1'):
        str += ": Pass"
        print(str)
    else:
        str += ": Fail"
        cnt += 1

if(cnt == 0):
    print("All PASS :)")
else:
    print("FAIL...  :(")