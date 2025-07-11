def sortEvenOddDesc(data):
    odd = []
    even = []

    for i in a:
        if i % 2:
            odd.append(i)
        else:
            even.append(i)

    return sorted(even,reverse=True) + sorted(odd,reverse=True)

a = [3,2,5,1,8,9,6]
result=sortEvenOddDesc(a)
print("input : " , a)
print("output : " , result)