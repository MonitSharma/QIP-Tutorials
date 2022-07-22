"""
One of the earliest known numerical algorithms is that developed
by Euclid, for computing the Greatest Common Divisor (GCD) of two positive
integers.

Algorithm :
    1. The first way of doing it if we try to subtract the smallest number from the greatest, GCD remain the same and in 
    this way, if we keep repeating this step, we'll finally get GCD. If g divides
    a and b, it also divides a-b. On the other hand if g divides a-b and b, then it also divides a = b+(a-b)


    2. But subtraction could be time consuming, instead what we do is , we divide
    the smaller number, the algorithm stips when we find remainder 0

"""
import time
# gcd using recursions

def hcfnaive(a,b):
    if(b==0):
        return a
    else:
        return hcfnaive(b, a%b)
seconds = time.time()
print("The GCD using recursion is: ", end = "")
print(hcfnaive(2125,696))
seconds1 = time.time()
print("The time taken by recursions is :",seconds1-seconds)


# gcd using loops

def commputeGCD(x,y):
    if x > y :
        small = y
    else : 
        small = x
    for i in range(1,small+1):
        if((x%i == 0) and (y % i ==0)):
            gcd = i
    return gcd
seconds = time.time()
print("The GCD using loops is ", end = "")
print(commputeGCD(2125,696))
seconds1 = time.time()
print("The time taken by loops is :",seconds1-seconds)


# gcd using euclidean method

def eucGCD(x,y):
    while(y):
        x, y = y , x % y
    return x
seconds = time.time()
print("The GCD using Euclid's method is ", end = "")
print(eucGCD(2125,696))
seconds1 = time.time()
print("The time taken by Euclid's method is :",seconds1-seconds)



## using math func
import math
seconds = time.time()
print ("The gcd of 2125 and 696 using math function is : ",end="")
print (math.gcd(2125,696))
seconds1 = time.time()
print("The time taken by Math function is :",seconds1-seconds)