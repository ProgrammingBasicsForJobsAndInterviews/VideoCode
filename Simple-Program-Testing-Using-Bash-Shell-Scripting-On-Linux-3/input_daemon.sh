while [ -z $pid ]
do
	pid=`pgrep -f "python3 $1"`
	sleep 1
done

read IN 
inputs_arr=(${IN})
num_inputs=$2
for ((test_case_count=0; test_case_count<num_inputs; test_case_count++))
do
	echo ${inputs_arr[test_case_count]} > /proc/$pid/fd/0
done
	
