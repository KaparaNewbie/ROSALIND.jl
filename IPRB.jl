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
julia> dominanceprobabilty(2, 2, 2)
0.78333
```
"""
function dominanceprob(k::Int, m::Int, n::Int)
    total = k + m + n
    
    domhomo1st = k / total
    het1st = m / total
    rechomo1st = n / total

    domhomo2nd = k / (total - 1)
    het2nd = m / (total - 1)
    rechomo2nd = n / (total - 1)

    domhomo1stand2d = (k / total) * ((k - 1) / (total - 1))
    het1stand2d = (m / total) * ((m - 1) / (total - 1))
    rechomo1stand2d = (n / total) * ((n - 1) / (total - 1))

end



# https://docs.julialang.org/en/v1/manual/types/#Parametric-Types
# https://docs.julialang.org/en/v1/manual/constructors/#Parametric-Constructors



struct Genotype 
    dominantallelprob
end

DominantHomozygous

struct DominantHomozygous <: Genotype end
struct Heterozygous end
struct RecessiveHomozygous end

# function dominantallelprob(a::DominantHomozygous, b::Heterozygous)
    
# end