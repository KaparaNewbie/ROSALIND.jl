# http://rosalind.info/problems/iprb/

"""
    dominanceprob(k, m, n)

Given: Three positive integers `k`, `m`, and `n`, representing a population 
containing `k`+`m`+`n` organisms: `k` individuals are homozygous dominant for a factor, 
`m` are heterozygous, and `n` are homozygous recessive.

Return: The probability that two randomly selected mating organisms will produce an individual 
possessing a dominant allele (and thus displaying the dominant phenotype). Assume that any two 
organisms can mate.

# Example
```julia-repl
julia> dominanceprob(2, 2, 2)
0.78333
```
"""
function dominanceprob(k::Int, m::Int, n::Int)
    
    total = k + m + n

    # we need to calc the probability to have at least one dominant allele
    # we can do this by the complementary prob: to have two recessive alleles
    # (1) define the possible matings, and their probabilities
    # (2) define the probabilities to have two recessive alleles for these matings
    # (3) multiply (1) and (2) and sum
    # (4) return 1 - (3)

    # (A) possible matings
    het1het2 = (m / total) * ((m-1) / (total - 1))
    het1homrec2 = (m / total) * (n / (total - 1))
    homrec1het2 = (n / total) * (m / (total - 1))
    homrec1homrec2 = (n / total) * ((n - 1) / (total - 1))

    # (B) two recessive gamets (one from each mate in a possible mating)
    twohets = 1 / 4
    onehetonehomrec = 1 / 2
    twohomrec = 1

    # (C) sum A & B
    homrecoffspring = (het1het2 * twohets) + 
                      ((het1homrec2 + homrec1het2) * onehetonehomrec) + 
                      (homrec1homrec2 * twohomrec)

    # (D) return the complementary of C
    domoffspring = 1 - homrecoffspring

    return domoffspring

end


round(dominanceprob(2, 2, 2), digits=5)

round(dominanceprob(23, 22, 19), digits=5)