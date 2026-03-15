#!/bin/bash
curl -s https://learn.zone01oujda.ma/assets/superhero/all.json > file.json

jq -r '.. | objects | select(.id? == 1) | "  \"name\": \"\(.name)\",\n    \"power\": \(.powerstats.power)," ' file.json