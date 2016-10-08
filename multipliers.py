def multipliers():
  return [lambda x, i=i : i * x for i in range(4)]

print [m(2) for m in multipliers()]

#multipliers = lambda x: [i*x for i in range(4)]
#print multipliers(2)
