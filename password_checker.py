def password_stenght(password):
    special_characters = "!@#$%^&*()-+?_=,<>/"

    if len(password) < 8 and password.islower() and not any(c in special_characters for c in password):
        return "0"
    elif len(password) < 8 and password.islower() and  any(c in special_characters for c in password):
        return "1"
    elif len(password) >= 8 and not password.islower() and not any(c in special_characters for c in password):
        return "2"
    elif len(password) >= 8 and not password.islower() and any(c in special_characters for c in password):
        return "3"