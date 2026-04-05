import sys

if len(sys.argv) != 2:
    exit(1)

filename = sys.argv[1]

try:
    file = open(filename, "r", encoding="utf-8")
except:
    exit(1)


out = open("out.txt", "w", encoding="utf-8")

for line in file:
    if "pineapple" in line:
        continue
    out.write(line)

file.close()
out.close()