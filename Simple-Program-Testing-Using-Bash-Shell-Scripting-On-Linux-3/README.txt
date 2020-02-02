
# This source directory must remain because there will be a reference to these files after running these commands.

# To install the setup files, run these commands from this directory:

mkdir $HOME/bin
rm $HOME/bin/setupTestingEnvPBJs
touch $HOME/bin/setupTestingEnvPBJs
chmod +x $HOME/bin/setupTestingEnvPBJs
echo `pwd`'/setupTestingEnvPBJs.sh $1' >> $HOME/bin/setupTestingEnvPBJs
chmod +x ./setupTestingEnvPBJs.sh

# After installing the setup script, from the directory with the script to test, type "setupTestingEnv.sh {script_name}"


