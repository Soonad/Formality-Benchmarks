def exp_mod(a, x, N):
    #Create array from '0' til 'N'
    array = []
    for i in range(N):
        array.append(i)

    # Compute a^x
    ax = a**x

    # Rotate left the array 'ax' times
    loops = 0
    while loops < ax:
        first = array[0]
        for j in range(N-1):
            array[j] = array[j+1]
        array[N-1] = first
        loops += 1
    # return first element
    return array[0]

result = exp_mod(3, 20, 13)
print(result)
