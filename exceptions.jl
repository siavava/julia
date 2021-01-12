
# TODO try-catch blocks

function squareroot(arg)
    try
        x = sqrt(arg)
        println(x)
    catch
        println(arg, " is a negative number!")
    finally
        println("The end")
    end
end

squareroot(-21)
squareroot(14)