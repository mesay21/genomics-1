for FILE in *.fastq
do
    awk 'NR%4' $FILE | awk 'NR%3' | sed 's/@/>/g' > $(basename $FILE .fastq).fasta
done
