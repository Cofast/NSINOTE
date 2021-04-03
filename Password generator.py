import random
import string

for i in range(12):
    car = string.printable
    mdp =""
    mdp_taille = random.randint(8,12)

    for i in range(mdp_taille):
        num = random.randint(0,50)
        mdp = mdp + car[num]

    print(mdp)
