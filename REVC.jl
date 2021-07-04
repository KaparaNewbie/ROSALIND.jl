using BioSequences
dna = "TCAGCTCTTATGTCGAAGTCGTCCTCCCTTCTGAACTGGTTGAACTTGGCCACCTATGAGTGCTGCCGCGCGCGCGACGTGCAAGGACGAATATTCGGCCTAAAAGGCGCCGGTGTAGCGGCGCAAACACCAAAACTCTGTTTATGGTTTTCGATAGGAGCAGGCCGATATATACTGGAGGCACAATCACGAAGGTCCGCCTCGGCAGGGGGCATTCCATGTACAACGTACAACAAAGCGGTTGATTGCGTGGCCCGTTATAGACGACCGGCTGAATAAGGTGTGGGACCCCGAAGTTCAGCACGAAGGAATATTACGCTTAATCAAAAGCGACACCACAGCTGCTCAGAAATCGTTATCCCCGACGTATGTGATTTAATAATACGGCCTGTATTCCGTCCGATTTAACACGTAGAAACTTTGTGGTTTAAGGTCGTGAGGAACTTCCTTGTTCCCTAGGTAGATTAAAACGTCTCACCCGAGTTGAGCATCCGGGTGCGTAAGTCTCTTTCTACCAGTCAAAAGACCTCCTCACTCCTAAAGGACCTGACCAAAGGGAACTTCACATCAGGAGCCCTTAAGCTTACCGCACGCCTCCTGATGCTTTCAGTGAAGTCGCTCGATGCAGATAGGTACGACATGGTGGGTTTTTATTATATACCTATGGTACTATCATTGTCAGACGCAATCACTAACGCCTGTGAGTGTCAGTTGCTAAGAATGTTGCGTAGGGTTGGACTCAAGGAAGTTGATGCCCGCTAACTAGGGTCGTCCTCTAGCTCAAACAGAATTTGTCTGGCTCCGATCGCAGCACAGCCCCATCCCGAGCCCCTCCGTAAATCTTTCGAATGCTTTAGCATAGAAGACTCGCACAGTTCGAAGCGGGGGATTACTCGAATTAAAACGGTAAAGTCGACAGCCCTCTAACCTACG"
dna = LongDNASeq(dna)
revcompdna = reverse_complement(dna)
print(revcompdna)