
def fib(n):
        prev_prev = 0
        prev = 1
        if (n == 1):
                return prev_prev 
        elif (n == 2):
                return prev
        else:
                for i in range(2, n):
                        current = prev + prev_prev
                        prev_prev = prev
                        prev = current
                return current
