#!/usr/bin/env bash
# Matches pattern based on the comma 
sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt > r0_output.txt
# Matches pattern based I am and My favorite sanwich is. It gets rid of the string that does not match
sed -E 's/\* I am ([a-zA-Z]+)\. My favorite sandwich is ([a-z]+)\./1. \1\n2. \2\n/;t;d'<r1_input.txt > r1_output.txt
# Matches pattern based on sandwich with and after period
sed -E 's/\* sandwich with ([a-zA-Z\.]+) ([a-z]+)/1. \1\n2. \2/' < r2_input.txt > r2_output.txt
