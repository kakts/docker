#!/bin/bash
num=$#
echo $num
if [ $# -eq 0 ]; then
  echo "1"
  /usr/games/fortune | /usr/games/cowsay
else
/usr/games/cowsay "$@"
fi
