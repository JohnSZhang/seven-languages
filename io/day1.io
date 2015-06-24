fib := method(n, if (n < 2, 1, fib(n - 1) + fib(n - 2)))

Number div := Number getSlot('/')
Number / := method(n, if((n==0), "error", call target div(n)))

Matrix := Object clone
Matrix dim := method(x, y,
    call target m := list();
    call target m setSize(x);
    call target m := call target m map(i, list());
    call target m := call target m map(i, i setSize(y)))
Matrix set := method(x, y, value, call target m at(x) atPut(y, value))
Matrix get := method(x, y, call target m at(x) at(y))

matrix := Matrix clone
matrix dim(2, 3)
matrix set(0, 0, 12)
matrix get(0, 0)

Matrix transpose := method()