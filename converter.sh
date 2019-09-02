# Converter from FASTQ into FASTA
for FILE in *.fastq
do
    awk 'NR%4' $FILE | awk 'NR%3' | sed 's/@/>/g' > $(basename $FILE .fastq).fasta
done
# the first command of this pipeline removes things from fasta
