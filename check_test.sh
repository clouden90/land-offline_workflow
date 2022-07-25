#!/bin/sh 

TEST_BASEDIR=/scratch2/BMC/gsienkf/Clara.Draper/DA_test_cases/land-offline_workflow/DA_IMS_test/output/modl/restarts/vector/

for TEST_DATE in 2016-01-01_18-00-00 2016-01-02_18-00-00 
do

for state in back anal
do 

cmp ./exp_out/DA_IMS_test/output/modl/restarts/vector/ufs_land_restart_${state}.${TEST_DATE}.nc ${TEST_BASEDIR}/ufs_land_restart_${state}.${TEST_DATE}.nc

if [[ $? != 0 ]]; then
    echo "$TEST_DATE $state are different"
    exit
fi

done
done 

echo 'test passed'


TEST_DATE=2016-01-03_18-00-00
state='back'
cmp ./exp_out/DA_IMS_test/output/modl/restarts/vector/ufs_land_restart_${state}.${TEST_DATE}.nc ${TEST_BASEDIR}/ufs_land_restart_${state}.${TEST_DATE}.nc

exit

echo "TEST PASSED"
