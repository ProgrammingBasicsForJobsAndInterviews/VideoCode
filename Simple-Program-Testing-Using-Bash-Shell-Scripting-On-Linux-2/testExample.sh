
##
## Usage: ./testExample.sh {script_name} {num_inputs}
##


declare -a input_file_arr

## read input file contents into array
IFS=$'\n' read -d '' -r -a input_file_arr < ./input.txt

script_name=$1
num_inputs=$2
num_test_cases="${input_file_arr[0]}"

## put inputs for each test case into an array
declare -a test_case_inputs
test_case_count=0
input_file_arr_length=${#input_file_arr[*]}
## loop through every input in file
for ((i=1; i<$input_file_arr_length; ((i+=num_inputs))))
do
	## loop through next input elements and put into new array
	declare -a test_case_inputs
	for ((input_count=0; input_count<num_inputs; input_count++))
	do
        # append input to array of inputs
		input=${input_file_arr[((i+input_count))]}
		test_case_inputs[$test_case_count]=${test_case_inputs[$test_case_count]}" "$input
	done
	((test_case_count++))
done


## reset output file
> actual_output.txt

for ((test_case=0;test_case<num_test_cases;test_case++))
do
	inputs_arr=${test_case_inputs[test_case]}
	echo "Test case ${test_case}..."
	echo -e '\t'"inputs: "${inputs_arr[@]:1}

	(while [ 1 ]
	do
		sleep 1
	done) | python3 $script_name >> actual_output.txt & # running in the background allows sending stdin to the process

	echo ${test_case_inputs[$test_case]} | ./input_daemon.sh $script_name $num_inputs

done

## assert test cases
expected_output=`cat expected_output.txt`
actual_output=`cat actual_output.txt`
if [ "$expected_output" == "$actual_output" ]; then
	echo "All Tests Passed"
else
	echo "Failure"
fi

# clean up stray processes
pkill -f $script_name

