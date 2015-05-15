# Change namelist (from input) into something the character generator can read

names = []
in_quotes = False
second_name = False # if we're on the part after the underscore
cur_name = ""
line = ""
char = ""
try:
    while True:
        line = raw_input()
        for char in line:
            if char == '@':
                raise EOFError
            elif char == '"':
                in_quotes = not in_quotes
            elif char == '_':
                second_name = True
            elif char.isspace() and not in_quotes:
                if len(cur_name) > 0:
                    names.append(cur_name)
                cur_name = ""
                second_name = False
            elif not second_name:
                cur_name += char
        if len(cur_name) > 0:
            names.append(cur_name)
        cur_name = ""
except EOFError:
    print names
    out = open("namelist.txt", "w")
    for name in names:
        out.write(name + "\n")
    out.close()
