# Hard - RNA Reverse Complement
# Create a function that finds the reverse complement of a ribonucleic acid (RNA)
# strand. The RNA will be represented as a string containing only the characters "A",
# "C", "G" and "U". Since RNA can only (canonically) allow pairings of A/U and G/C,
# the complement of an RNA would be as follows:
# Original Complement
# "AAA" "UUU"
# "UUU" "AAA"
# "GGG" "CCC"
# "CCC" "GGG"
# Your function should find the complement on the right AND also reverse the
# resulting string.
# Examples
# reverse_complement("GUGU") ➞ "ACAC"
# reverse_complement("UCUCG") ➞ "CGAGA"
# reverse_complement("CAGGU") ➞ "ACCUG"
# Notes
# You can assume all input sequences will be valid.

def reverse_complement(sequence)
  sequence.tr('AUCG', 'UAGC').reverse
end

puts reverse_complement("GAGGC") == "GCCUC"
puts reverse_complement("UCUCG") == "CGAGA"
puts reverse_complement("CAGGU") == "ACCUG"
puts reverse_complement("UAUUUUUCCA") == "UGGAAAAAUA"
puts reverse_complement("GUAGGCAACA") == "UGUUGCCUAC"
puts reverse_complement("UAGCUAAAUC") == "GAUUUAGCUA"
puts reverse_complement("AUGAGCGUAC") == "GUACGCUCAU"
puts reverse_complement("UUAUACCCGAGUCGGAUUUGUCACU") == "AGUGACAAAUCCGACUCGGGUAUAA"