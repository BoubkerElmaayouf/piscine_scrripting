
def remember_the_apple(shop_list):
    if not shop_list:
        return shop_list
    
    if "apple" in shop_list:
       return shop_list
   
    shop_list.append("apple")
    return shop_list



