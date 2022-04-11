from random import randint
pos = randint(1, 10)
backwards = False

for i in range(1, 100):
    field = '!          !'
    field = field[:pos] + 'O' + field[pos+1:]
    if pos == len(field)-2:
        backwards = True
    elif pos == 1:
        backwards = False
    print(field)

    if backwards:
        pos -= 1
    else: 
        pos += 1
