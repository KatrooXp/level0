#!/bin/bash

echo "Please, create a filename"
read input
cat << EOF > $input
some poem
some poem
EOF
cat $input
echo "Task finished" >> /dev/stderr

# while running add: 1>/dev/null 2> stderr
