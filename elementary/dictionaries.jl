#TODO create and manipulate dictionaries

d1 = Dict("a" => 1, "b" => 2)
println(d1)
d2 = Dict{String, String}()
d2["key"] = "val1"
println(d2)

println(haskey(d1, "c"))
println(haskey(d1, "a"))
println(d1)
delete!(d1, "b")
println(d1)