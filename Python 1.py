n = int(input("Enter the number of operations: "))
list = []
i = 1
while(i <= n):
    o = input("Enter operation to be performed: ")
    if(o == "insert"):
        j = int(input("Enter value: "))
        k = int(input("Enter index: "))
        list.insert(k,j)

    elif(o == "print"):
        print(list)

    elif(o == "2"):
        a = int(input("Enter value: "))
        list.remove(a)
    
    elif(o == "append"):
        b = int(input("Enter value: "))
        list.append(b)
    
    elif(o == "sort"):
        list.sort()
    
    elif(o == "pop"):
        list.pop()
    
    elif(o == "reverse"):
        list.reverse()
    
    i = i + 1
print(list)
