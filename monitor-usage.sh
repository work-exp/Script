#!/bin/sh
# Usage: ./monitor-usage.sh <PID of the process>
# Output: top.dat with lines such as `1539689171 305m 2.0`, i.e. unix time - memory with m/g suffix - CPU load in %
# To plot the output, see https://gist.github.com/jakubholynet/931a3441982c833f5f8fcdcf54d05c91

# get PID
PID=$(pidof $1)
echo Process $1 ,PID: $PID

if [ -n "$1" ]; then
  echo "You supplied the first parameter!"
else
  echo "Process name fail"
  echo "syntax: ./monitor-usage.sh <process name> <output path>"
  echo "./monitor-usage.sh Nex"
  exit;
fi

if [ -n "$2" ]; then                              
  echo "You supplied the first parameter!"        
else                                              
  echo "output path fail"                  
  echo "syntax: ./monitor-usage.sh <process name> <output path>"
  exit;      
fi
     
# remove file
rm top.dat

while true
do
timestamp=$(date +"%b %d %H:%M:%S")
cpu_mem_usage=$(top -p $PID -b -d 1 -n 1 | grep $PID | awk '{print $9 "," $10}')
echo $cpu_mem_usage
echo "$timestamp,$cpu_mem_usage" >> $2
done

#while true; do top -p 689 -b -n 1 | grep '689' | awk '{print $9 "," $10}'  >> top.dat; done
