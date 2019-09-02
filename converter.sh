# Converter from FASTQ into FASTA - bash
# HPC School - Trento - 02.09.2019
echo "let's start the program"
for FILE in *.fastq
do
    awk 'NR%4' $FILE | awk 'NR%3' | sed 's/@/>/g' > $(basename $FILE .fastq).fasta
done
# the first command of this pipeline removes things from fasta
