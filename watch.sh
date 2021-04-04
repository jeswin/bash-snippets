#!/bin/sh
while inotifywait -r -e modify -e create $1; do
  eval $2
  eval $3
  eval $4
done