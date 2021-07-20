#=
  Data Structures in Julia
=#

contacts = Dict{String, Int}("Amittai" => 01, "Joel" => 02, "Ravi" => 03)

println(contacts)
contacts["Peter"] = 04
println(contacts)

pop!(contacts, "Joel")
println(contacts)

myNames = collect(contacts)
println(myNames)

myNames = ("Amittai", "Joel", "Siavava")
println(myNames)
println(myNames[1])

myArr = [1:10]
println(myArr)

myArr = [1, 2, 3, 4, 5]
println(myArr)

myArr = rand(2, 3)
println(myArr)
