##
## usage: after installing this setup script, from the directory with the script to test, type "setupTestingEnvPBJs.sh {script_name}"
##

## make a new directory using the name of the script
script_name=$1
new_dir_name=$script_name"-testing"
mkdir $new_dir_name

## TODO: exit if directory already exists

## copy the test suite files and the script under test to the new directory
source_dir=`dirname $0` ## directory of this install script
cp $source_dir/* ./$new_dir_name/
mv $script_name ./$new_dir_name/
