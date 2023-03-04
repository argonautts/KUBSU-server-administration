# The decision that we wrote on a couple on Saturday (18 february)
# run: bash script.sh 5 output.txt

for i in `seq 0 $1`
do
echo "$(date +"%d.%m.%y %H:%M") = $(cat /proc/loadavg)" >> $2
sleep 1
done
