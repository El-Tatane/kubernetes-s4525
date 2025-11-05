#!/bin/bash
#

for i in 1 2
do
  ssh 192.168.56.15${i} mkdir data
  scp -r html 192.168.56.15${i}:data/
done
