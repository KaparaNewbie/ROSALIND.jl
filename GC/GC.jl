using BioSequences
using FASTX

function countgccontent(dir, fasta)
    higestrecord = FASTA.Record()
    highestgccontent = 0
    reader = FASTA.Reader(open(dir * "\\$fasta", "r"))
    for record ∈ reader  # for record in reader
        seq = sequence(record)
        gccontent = count(nuc -> nuc ∈ [DNA_C, DNA_G], seq) * 100 / length(seq)
        if gccontent > highestgccontent
            highestgccontent = gccontent
            higestrecord = record
        end
    end
    close(reader)
    println(identifier(higestrecord))
    println(highestgccontent)
end

dir = pwd() * "\\gc"

fasta1 = "fasta1.fasta"
countgccontent(dir, fasta1)

fasta2 = "fasta2.fasta"
countgccontent(dir, fasta2)
