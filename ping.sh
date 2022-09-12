#!/bin/bash
input="dns.txt"
while IFS= read -r line
do
  echo "$line"
  echo $(ping -c 1 $line | gawk -F'[()]' '/PING/{print $2}')
done < "$input"