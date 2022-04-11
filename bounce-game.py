from random import randint
pos = randint(1, 10)
backwards = False

for i in range(1, 100):
    field = '!          !'
    field = field[:pos] + 'O' + field[pos+1:]
    if field[len(field)-2] == 'O':
        backwards = True
    elif field[1] == 'O':
        backwards = False
    print(field)

    if backwards:
        pos -= 1
    else: 
        pos += 1