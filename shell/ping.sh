#!/bin/bash
for i in {1..254}
do
  ping -c2 -i0.3 -W1 10.0.0.$i  &>/dev/null
  if [ $?-eq 0 ];then
    echo "10.0.0.$i is up"
  else
    echo "10.0.0.$i is down"
  fi
done
