import json
class User:
    username = 'user'
    email = 'something@mail.com'

def create_new_user(diction):
    diction = json.loads(diction)

    user = User()
    if "username" in diction and "email" in diction:
        user.username = diction["username"]
        user.email = diction["email"]
    else:
        user.__dict__.clear()
    return user


def user_to_json(user):
     return json.dumps(user.__dict__)