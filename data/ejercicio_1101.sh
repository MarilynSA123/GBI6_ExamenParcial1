## Next Generation Sequencing Data 

## Change directory to CBS/unix/sandbox

cd ~/CBS/unix/sandbox 

## What is the size of the file Marra2014_data.fasta 

ls -lh ~/CBS/unix/data/Marra2014_data.fasta 

## Create a copy of Marra2014_data.fasta in the sandbox and name it my_file.fasta

cp ~/CBS/unix/data/Marra2014_data.fasta my_file.fasta

## How many contigs are classified as isogroup00036? 

grep -c isogroup00036 my_file.fasta

## resultado es 16 

## Replace the original “two-spaces” delimiter with a comma 

cat my_files.fasta | tr -s ' ' ',' 

## How many unique isogroups are in the file?

grep ">" my_file.fasta| cut -d ',' -f 4 | uniq | wc -l 

## Which contig has the highest number of reads (numreads)? How many reads does it have?

grep '>' my_file.fasta | cut -d ',' -f 1,3 | sort -t '=' -k 2 -n -r | head -n 1













