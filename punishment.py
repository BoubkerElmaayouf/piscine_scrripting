
def do_punishment(a ,b ,c = 0):
    a = a.strip()
    b = b.strip()
    res = ""
    for _ in range(c):   
        res = res + f"{a} {b}.\n"
        
    return res

