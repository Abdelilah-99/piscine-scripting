import json

class User:
    username = 'user'
    email = 'something@mail.com'


def create_new_user(registration):
    data = json.loads(registration)
    user = User()
    user.username = data['username']
    user.email = data['email']
    return user

def user_to_json(user):
    return json.dumps(user.__dict__)
