#TODO create and manimupate arrays

arr = [1, 2, 3, 4, 5]   # remember: Julia is 1-indexed
println(arr)
println(typeof(arr))
println(length(arr))

arr2 = [1, "what", [1, 2, 3], 5]
println(arr2)
println(typeof(arr2))

# TODO create arrays with specific types

arr3 = Float64[]
push!(arr3, 1.0, 2.0, 3.0)
println(arr3)

# zeros, ones
arr4 = zeros(4)
arr5 = ones(4)
println(arr4, arr5)
arr6 = fill(5, 7)   # fill with 7 instances of number 5
println(arr6)

# TODO sort 
newarr = sort(arr, rev = true)
println(newarr)

# TODO convert to string with delimiter character
strval = join(arr, "-")
println(strval)
