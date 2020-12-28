
# TODO: dot operator
array1 = [1, 2, 3, 4, 5]
println(array1)

array2 = array1 .* 2
println(array2)
println(sqrt.(array1))

# Parse

a = "30.29"
b = parse(Float64, a)