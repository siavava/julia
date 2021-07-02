# TODO create and manipulate tuples

tup = (1, 3.0, "five", 7, '9')
println(tup)
println(tup[1:3])

for i in tup
    println(i)
end

# Multiple dimensional tuples
dimtup = ((1, 2), (3, 4), (5, 6))
println(dimtup)
println(dimtup[2][1])

# TODO named tuples
namedtup = (a=1, b="two", c='3')
println(namedtup.a)
println(namedtup.c)
