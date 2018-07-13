#!/bin/bash

cat member.cfg |while read line
do
  set -- $line
  hostip=$1
  passwd=$2
  member=$3
  expect sshf5.exp $hostip $passwd $member
done
