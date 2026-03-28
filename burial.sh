#!/bin/bash
sleep 2 &
sleep 0.1
jobs -l | awk '{print $1, $3, $4, $5, $6}'


