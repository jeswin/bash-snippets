#!/bin/sh

# Usage
# ./watch.sh $src_code_dir $build_command $kill_server $start_server
# ./watch.sh 'src/' 'npm run build' 'killall http-server' 'http-server dist/ &'

eval $4
while inotifywait -r -e modify -e create $1; do
  eval $2
  eval $3
  eval $4
done
