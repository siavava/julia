
function sayhi(name)
  println("Hi $name, it's great to see you!")
end

sayhi2(name) = println("Hi $name, it's great to see you")

sayhi3 = name -> println("Hi $name, it's great to see you")

sayhi("Amittai")
sayhi2("Amittai")
sayhi3("Amittai")

square(x) = x ^ 2

matrix = rand(3, 3)
println(matrix)
println(square(matrix))


arr = [2, 13, 7]
println(arr)
println(sort(arr))
println(arr)
println(sort!(arr))
println(arr)
