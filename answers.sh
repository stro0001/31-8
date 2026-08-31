#Antal request:)
wc -l access.log
#error count
awk '$7 >=400 {print $7}' access.log |sort | uniq -c
# the busiest5 IP's
cut -d' ' -f1 access.log | sort | uniq -c | sort -rn | head -5
#the busiest hour
cut -d' ' -f4 access.log | sort | uniq -c | sort -rn | head -1
#extract a column, sortere dem, count unique values
cut -d',' -f2 data.csv | sort | uniq -c
