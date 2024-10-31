def encrypt_text(decrypt_input,n):

    ans = ""
    # iterate over the given text
    for i in range(len(decrypt_input)):
        ch = decrypt_input[i]
        
        # check if space is there then simply add space
        if ch==" ":
            ans+=" "
        # check if a character is uppercase then encrypt it accordingly 
        elif (ch.isupper()):
        # ord() gibt Unicode-Charakter zurück
            ans += chr((ord(ch) + n-65) % 26 + 65)
        # check if a character is lowercase then encrypt it accordingly
        
        else:
            ans += chr((ord(ch) + n-97) % 26 + 97)
    return ans