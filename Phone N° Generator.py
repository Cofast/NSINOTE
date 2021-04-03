import random

for i in range(12):
    car = ["0","1","2","3","4","5","6","7","8","9"]
    tel ="06"
    tel_taille = 8

    for i in range(tel_taille):
        num = random.randint(0,9)
        tel = tel + car[num]

    print(tel)
