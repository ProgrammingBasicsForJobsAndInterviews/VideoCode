import fibonnacci

fib = fibonnacci.fib

def test_one():
    assert(fib(1) == 0)

def test_two():
    assert(fib(2) == 1)
 
def test_three():
    assert(fib(3) == 1)

def test_four():
    assert(fib(4) == 2)

def test_five():
    assert(fib(5) == 3)

def test_six():
    assert(fib(6) == 5)
