a = [10,15,3,4,67,43,12]

def mean(a):
    n = len(a)
    return sum(a)/n
print "mean = %d" % mean(a)

def median(a):
    a = sorted(a)
    n = len(a)
    if n%2 == 1:
        return a[n//2]
    else:
        n = n//2
        return '%g'%(float(a[n-1]+a[n])/2)
print "median = %d" % median(a)

def mode(a):
    count = []
    for i in range(len(a)):
        count.append(a[i])
    freq = max(count)
    if freq == 1:
        #if no element is repeated, there is no mode
        return []
    else:
        return sorted([i for i in set(a) if a.count(i)==freq])
print "mode = %s" % mode(a)
