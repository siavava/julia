# Everything strings in Julia

mychar = 'x'
println(Int(mychar))
println(Char(120))

# Single-line strings
mystr = "Here is a longer string."

# Multiple-line strings
myotherstr = """
    Here is a
    much longer string
    spanning multiple lines.
    """
println(myotherstr)
println(length(myotherstr))

# String slicing
println(myotherstr[2: end-20])


# String concatenation
print(mystr * " " * myotherstr * ".")
println(" ")

# String interpolation -- executing expressions inside strings 
# Akin to formatted strings in Python
num1 = 10
num2 = 20
println("The result of $num1 + $num2 is $(num1 + num2)")
