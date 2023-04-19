import math
def fermatfactorize(n, verbose=True):
    x = int(math.sqrt(n)) + 1
    while 1:
        z = x * x - n
        y = int(math.sqrt(z))
        if verbose:
            print("fermatfactorize: n, x, x*x - n, y, x*x - n - y*y =", n, x, z, y, z - y*y)
        if y**2 == z:
            print("fermatfactorize: factors =", (x - y), (x + y))
            return x - y, x + y
        x += 1