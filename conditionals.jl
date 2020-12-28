# import system
# import STDIN
# An IF-ELSE statement

x = 5
if x < 10
    println("X is less than 10")
else
    println("X is bigger than 10")
end

print("Enter a number: ")
# input_value = readline(STDIN)
input_value = "97.1"
num = parse(Float64, input_value)
println()
if num > 95
    println("Grade: A")
elseif num > 90
    println("Grade: B")
elseif num > 80
    println("Grade: C")
else
    println("FAIL")
end
