#!/bin/bash


# list files with files less than certain size
find /path/to/dir -type f -size -1M

# list empty folders
find /path/to/dir -type d -empty

# list folders with less than certain number of files (also prints the number of files)
find /path/to/dir -maxdepth 1 -type d -exec bash -c "echo -ne '{} '; ls '{}' | wc -l" \; | awk '$NF<=6'

# list folders with less than certain number of files (it only prints names)
find /path/to/dir -maxdepth 1 -type d -exec bash -c "echo -ne '{}\t'; ls '{}' | wc -l" \; | awk -F"\t" '$NF<=4{print $1}'
