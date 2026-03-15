#!/bin/bash
ls -Fu --sort=time | tr '\n' ',' | sed 's/,$//'