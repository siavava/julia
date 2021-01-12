# TODO for loops
for i in 1:10
    for j in 1:10
        println(i * j)
    end
end

for i in 1:10, j in 1:10
    println(i * j)
end

# TODO while loops

i = 1
while i <= 5
    println(i)
    global i += 1
end

# TODO Enumeration in a loops
teams = ("Giants", "Wizards", "Dragons", "knights", "Kings")
for (index, value) in enumerate(teams)
    println(index, ", ", value)
end 