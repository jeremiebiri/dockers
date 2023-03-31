#!/usr/bin/env bash

start() {
  echo "Please Wait Your Application Is Starting"
}

process() {
  _process() {
    timeout "$((i*i))" yes &>/dev/null
    echo "Please Wait While processing Your Application ($1/5)"
  }

  for i in $(seq 1 5)
  do _process "$i"
  done
}

finish() {
  echo "Application finished!"
}

start &&
  process &&
  finish
