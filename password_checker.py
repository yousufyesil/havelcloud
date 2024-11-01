def password_stenght(password):
    special_characters = "!@#$%^&*()-+?_=,<>/"

    if len(password) < 8 and password.islower() and not any(c in special_characters for c in password):
        return "Sehr Schwach"
    elif len(password) >= 8 and not password.islower() and not any(c in special_characters for c in password):
        return "Schwach"
    elif len(password) >= 8 and not password.islower() and any(c in special_characters for c in password):
        return "Mittel"
    else:
        return "Stark"