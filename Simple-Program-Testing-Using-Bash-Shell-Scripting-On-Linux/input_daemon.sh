input=`cat input.txt`
while [ -z $pid ]
do
	pid=`pgrep -f "python3 example_program.py"`
	sleep 1
done

echo $input > /proc/$pid/fd/0
