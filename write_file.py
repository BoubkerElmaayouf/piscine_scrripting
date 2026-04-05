def to_do(tasks):
    file = open("output.txt", "w", encoding="utf-8")
    for date, task in tasks:
        file.write(f"{date.strftime('%A %d %B %Y')}: {task}\n")
    file.close()
