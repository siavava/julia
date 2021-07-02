# USING BUILT_IN FUNCTIONS IN Julia

# numeric FUNCTIONS

# TODO round, floor, ceil, abs

x = round(30.5)
println(x)
x = round(30.5, RoundUp)
println(x)
y = 29.95
println(floor(y))
println(ceil(y))

z = -15
println(z)
println(abs(z))

# TODO print styled text

thestr = "This is some text"
printstyled(thestr)
println()

printstyled(thestr, bold=true)
println()

printstyled(thestr, bold=true, color=:red)
println()

println("What is your name?")
person_name = readline()
j = "What?"
print("Your name is ", person_name)

# TODO: "is" functions
# isascii
# isspace
# isdigit
