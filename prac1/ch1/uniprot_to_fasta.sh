# !/usr/bin/env bash

function get_uniprot_seq () { curl -s http://www.uniprot.org/uniprot/$1.fasta; }
# peptide="EEKSAVTALW"
# uniprotseqs=(P18988 P18984 P18985 P02040 P02024 P02023 P02025 P08535 P15166 P02049 P09909 P02057 P18990)
for blastmatch in ${uniprotseqs[@]}; do echo "> $peptide $(get_uniprot_seq $blastmatch | sed 's/>//1')"; echo; done
