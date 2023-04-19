from numbertheory import *
n = 11 * 11 * 37
a, b = fermatfactorize(n, verbose=True)
print("Factors:", a, b)
print("Check:", n == a * b)