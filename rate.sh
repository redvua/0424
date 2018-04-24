# l=( $(cat /etc/passwd) )

while read
do
 rate=1
 let "rate += $RANDOM % 12"


 login=$(echo -n $REPLY | cut -d: -f1)
 echo -e "$login\t\t\t$rate"
done
