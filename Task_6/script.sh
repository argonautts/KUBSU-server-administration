if [ "$FOO" == "1" ]; then
    exit

if [ "$BAR" == "5" ]; then
    exit

FILE=$1

while true; do
if test -f "$FILE"; then
    echo "File $FILE created!"
    exit
fi
sleep 1;
done
