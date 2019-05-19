
(while [ 1 ]
do
	sleep 1
done) | python3 example_program.py > actual_output.txt & # running in the background allows sending stdin to the process

./input_daemon.sh # run daemon that opens input file and sends to examply_program.py

expected_output=`cat expected_output.txt`
actual_output=`cat actual_output.txt`
if [ "$expected_output" == "$actual_output" ]; then
	echo "All Tests Passed"
else
	echo "Failure"
fi
