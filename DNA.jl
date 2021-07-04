# http://rosalind.info/problems/dna/

# Counting DNA Nucleotides

using BioSequences

function countnucleotides(dna)
    dna = LongDNASeq(dna)
    dnacounter = Dict()
    for nuc in dna
        counts = pop!(dnacounter, nuc, 0)
        get!(dnacounter, nuc, counts + 1)
    end
    finalanswer = [get(dnacounter, nuc, 0) for nuc in [DNA_A, DNA_C, DNA_G, DNA_T]]
    print(finalanswer)
end

# dna = LongDNASeq("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")
dna = "ACCATTGACGCGCGAGAAGAAACCTTCAAACCATACACTCTAAAATGCGATTACTTCCATCTTGATCGCCGGTACCAGTCCGCCAGTGCCGACAAGCCATGGATGAACCGGCTGGATGGCGGTGCCAGGAATATGACGGTTCGCAGAATCAAGAGTACATGCCGGGCGCGTCCCTACGGTTCGGTAAACAAGAGCAGGCGTTCGGTATAATAAGAACTCGAATTGCTTAAGAGAACTCACTTGGACGTTGCGTCGCGTGTAGACTCTTATATAGTCCGGACCGAAGTCGGAGCTGCAGTCGATCCGTCCAATTAGGATGAGAGATGTTGCCAGACTGAGTATCATCTATATTAGCTTTGGCGAAGACAGCACATTCTATCACCAATAGTTACGCGACGACTCGAATCCTGCTTAGATTATTGAATATGCGCTGTGCCGGTTCATCGCGGGATCATTGCTGCAGTCATTAGTAGACTGCTTATCATCCCTGCTGCTATACCTGAGCGCAGTGACTTGGAGCCTGGGGTGTGGTTTGAGTCCGCACGAATGTGAGAGGTCGTTTGAACACAGTTCACTACAGCCCATACGATGTGATAACCGGAGGGGTCGATACCATTTCACAGTAACCACCACAATCGTCTTCTCCTTGTAATAATAAACACCGAACCATTCTTTACGCCTACAGTCTGGTCGATAATAAAGTCGTTGCCATAACACAGCAGGTATGAACCGCCCCTACCCTATTTTAGAATAGACTCAAGAGCCAACACACTTGGCTTTCCGCATATGAAGCGGGACTCCGGCCGAAGTGGGCCTTCGAACGGGAGACACTCGCATCATATACGGTACGTCAACTCGGACGCCAAGGCCCCAGGCAATGCCAACAGCAACTCGTTAGATCCTTAACAATTTATCCTTCGATGCCCGCAGTGCACTTTGTCTTAGAGCGTGTGAGCCTTGGTCATGCAAAGACCTAGTTATCCTTTGAAAA"

# countnucleotides(dna)
print("1st run")
@time countnucleotides(dna)
print("2nd run")
@time countnucleotides(dna)

countnucleotides(dna)