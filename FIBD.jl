# http://rosalind.info/problems/fibd/
    
function createpairs(maxage=3)
    pairs = fill(0, (1, maxage + 1))  # first place for newborns, last one for elders
    pairs[1] = 1
    return pairs
end

function givebirth(pairs; numofoffsprings=1)    
    pairs[1] = sum(numofoffsprings .* pairs[3:end])
    return pairs
end

function growold(pairs)
    for age = length(pairs):-1:2
        pairs[age] = pairs[age-1]
    end
    return pairs
end

function mortalfibonnacirabitts(n, m, k=1)
    pairs = createpairs(m)
    for epoch = 1:n
        epoch == 1 && continue
        pairs = growold(pairs)
        pairs = givebirth(pairs, numofoffsprings=k)
    end
    println(sum(pairs[begin:end-1]))
end

mortalfibonnacirabitts(6, 3)

mortalfibonnacirabitts(92, 19)