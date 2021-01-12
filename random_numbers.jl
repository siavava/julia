using Random

#TODO select a random number from a given set
for i in 1:10
    println(rand([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))
end

# TODO pick a random number between 0 and 1
for i in 1:10
    # println(rand())
    println(((rand() - 0.5) * 10) + 5)
end