#!/bin/bash
ls -l --no-group --time-style="+%Y-%m-%d %H:%M" | sed '1d' | awk '{$2=""; $3=""; $4=""; print}' | sed 's/  \+/ /g'