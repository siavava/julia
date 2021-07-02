# TODO create and manipulate styles
set1 = Set()
push!(set1, "a", 2, 1.056)
println(set1)
println(typeof(set1))

set2 = Set([1, 2, 3, 4, 5, 6, 7, 8])
println(set2)
println(typeof(set2))

# TODO create a set of given types only:
set3 = Set{String}()
push!(set3, "Monday", "Wednesday", "Thursday", "Friday")
println(set3)

other_set = Set(["Tuesday", "Saturday", "Sunday"])

all_days = union(set3, other_set)
intersect_days = intersect(set3, other_set)
diff_days = setdiff(set3, other_set)
println("set3: ", set3)
println("other set: ", other_set)
println("all days: ", all_days)
println("Intersection: ", intersect_days)
println("set diff: "), diff_days