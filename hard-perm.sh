#!/bin/bash

mkdir -p hard-perm/{0,3,A}
touch hard-perm/{1,2,4,5,6,7,8,9}

chmod 401 hard-perm/0
chmod 777 hard-perm/3
chmod 401 hard-perm/A

chmod 402 hard-perm/1
chmod 604 hard-perm/2
chmod 510 hard-perm/4
chmod 460 hard-perm/5
chmod 460 hard-perm/6
chmod 510 hard-perm/7
chmod 604 hard-perm/8
chmod 402 hard-perm/9

ls -l hard-perm

rm -rf hard-perm