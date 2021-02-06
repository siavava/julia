#TODO define a functions

function myfunc(a, b)
    println("This is a function")
    a + b   #Julia functions automatically return last expression in the function
end

result = myfunc(2, 5)
println(result)

function foo(a, b, z = 10)  #default value arguments
    (a + b) * z
end

println(foo(1, 2))

println(foo(1, 2, 5))

function bar(a, b; multiplier = 10) #keyword arguments must be explicitly set & called
    (a + b) * multiplier
end

println(bar(100, 2, multiplier = 5))

# SHorthand function definitions
myfunc(x, y) = (a = x - 1; 2a + y)
result = myfunc(3, 4)
println(result)

# Variable argument functions
function summit(args...)
    sum = 0
    for a in args
        sum += a
    end
    return sum  #must use return statement
end

println(summit(1, 2, 3, 4, 5, 6, 7, 8, 9))

quotient(a, b) = (a/b)

println(quotient(2, 5))

factoriall(x, y) = (x % y)

println(factoriall(259475925, 37))
