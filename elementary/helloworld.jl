function helloworld()
  println("Hello, world!")
end

helloworld()


function helloworld(count::Int)
  for i in 1:count
    println("Hello world ", i)
  end
end

helloworld()
helloworld(2)

# VARIABLES
first = 1
second = 2.0
stringvar = "This is a string"
initial = "J"
boolval = true
array1 = [first, second, stringvar, initial, boolval]
for item in array1
  println(item)
end
# print(first, second, stringvar, initial, boolval)

# CONSTANTS
const MEANING_OF_LIFE = "Happiness"
println(MEANING_OF_LIFE)

# MEANING_OF_LIFE = "Money!"
println(MEANING_OF_LIFE)

a = Int16(-200)
println(typeof(a), " ", a)

# typemax() and typemin() give max and min values fro each type
println(typemax(Int))
println(typemax(Int16))
println(typemax(Int32))
println(typemax(Int64))

println(1.0/0.0)
println(1.0/Inf)
println(0.0/0.0)
println(zero(Int16))
println(one(UInt32))