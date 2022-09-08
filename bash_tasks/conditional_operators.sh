#!/bin/bash

[[ $1 == $2 ]]
echo $?

[[ $1 > $2 ]]
echo $?

[[ -z "${TEST}" ]]
echo $?

[[ $3 != $4 ]]
echo $?

[[ $3 -ge $4 ]]
echo $?
