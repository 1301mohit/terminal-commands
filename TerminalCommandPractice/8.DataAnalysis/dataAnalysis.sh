#!/bin/bash
printf "Print EmployeeName and TotalPay who has BasePay greater than 100000\n"
cat ../../linux-content/data.csv | awk '{if($4 > 100000) print $2"  "$7}'
printf "\nPrint EmployeeName, Jobtitle, Totalpay whose job title is captain\n"
cat ../../linux-content/data.csv | grep CAPTAIN | awk '{print $2" "$3" "$7}'
printf "Print sum of Total pay : "
cat ../../linux-content/data.csv | grep CAPTAIN | awk '{sum+=$7} END{print sum}';
printf "\nPrint JobTitle and Overtiepay who has Overtimepay is between 7000 and 100000\n"
cat ../../linux-content/data.csv | awk '$5<10000 && $5>7000 {print $2" "$3" "$5}';
printf "\nPrint average basepay : "
cat ../../linux-content/data.csv | awk '{sum+=$4} END {print sum/NR}';

