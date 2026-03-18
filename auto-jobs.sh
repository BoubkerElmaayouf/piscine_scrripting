#!/bin/bash
echo '41 20 * * 5 echo "01"\n' > task1
echo '* * * * * sh /home/user01/check' > task2
echo '0 0 * * * sh /home/user01/backup' > task3
echo '@reboot 01exec' > task4

tar -cf auto-jobs.tar task1 task2 task3 task4

tar -tvf auto-jobs.tar

rm -f task1 task2 task3 task4
