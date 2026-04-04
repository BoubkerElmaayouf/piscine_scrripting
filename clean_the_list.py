def clean_list(list):
    if not list:
        return list
    bb = False
    
    for i, item in enumerate(list):
        item = item.strip().capitalize()
        if item == "Milk":
            bb = True
        list[i] = str(i+1)+"/ "+ item
    if bb == False:
        list.append(f"{len(list)+1}/ Milk")
    return list

