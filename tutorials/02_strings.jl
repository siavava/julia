#=
  String operations in 
=#

s1 = "String 1"
s2 = "String 2"
s3 = "String \"3\""

println(s1, s2, s3)

concat = string("Here is a string ", "... and here's another.")
concat2 = string(s1, s2, s3)
println(concat)
println(concat2)