# http://rosalind.info/problems/fib/
    
function fibonnacirabitts(n, k)
    # n = num of epochs
    # k = num of offsprings per mating
    # for n=5 and k=3, the function prints 19
    pairs = fill(1, (1, n))
    for epoch = 1:n
        epoch in [1 2] && continue
        pairsinprevepoch = pairs[epoch - 1]
        maturepairs = pairs[epoch - 2]
        newoffsprings = maturepairs * k
        pairs[epoch] = pairsinprevepoch + newoffsprings
    end
    println(pairs[n])
end

fibonnacirabitts(5, 3)
# fibonnacirabitts(36, 3)
