#!/bin/sh

# Usage
# ./watch.sh $src_code_dir $build_command $kill_command $restart_command
# ./watch.sh 'src/' 'npm run build' 'killall http-server' 'http-server dist/ &'

while inotifywait -r -e modify -e create $1; do
  eval $2
  eval $3
  eval $4
done
