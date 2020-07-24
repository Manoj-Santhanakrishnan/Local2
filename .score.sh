#!/bin/bash
SCORE=0
PASS=0
fail=0
TOTAL_TESTS=1

TEST_1=$( grep -io "fs.mkdir" -e "fs.writeFile" -e "Node_folder" -e "sample.txt" /projects/challenge/App.js | wc -l )
if [ $TEST_1 -ge 4 ]
then PASS=$((PASS + 1))
fi;


echo "Total testcases: 1"
echo "Total testcase passed: $PASS"
echo "Total testcase fail: $fail"
SCORE=$(($PASS*100 / $TOTAL_TESTS))
echo "FS_SCORE:$SCORE%"


