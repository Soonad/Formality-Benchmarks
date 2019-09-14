nums = [0] * 100

def inc(x):
    return x+1

lim = 2**20
for i in range(lim):
    nums = map(inc, nums);

#print(nums)
