
import matplotlib.pyplot as plt

fichier = open("data.txt","r")
f = fichier.readlines()
fichier.close()


attaque = []
vie = []
temps = [i for i in range(len(f))]

for l in f:
    li = l.strip().split(";")
    attaque.append(float(li[0]))
    vie.append(float(li[1])/20.0)


plt.plot(temps,attaque,label="Attaque")
plt.plot(temps,vie,label="Vie/20")
plt.legend()
plt.show()
