import math

# Solicita os coeficientes da equação ao usuário
a = float(input("Informe o coeficiente a: "))
b = float(input("Informe o coeficiente b: "))
c = float(input("Informe o coeficiente c: "))

# Calcula as raízes da equação utilizando a fórmula de Bhaskara
delta = b**2 - 4*a*c
if delta < 0:
    print("A equação não possui raízes reais.")
elif delta == 0:
    x = -b / (2*a)
    print(f"A equação possui uma raiz real: x = {x}")
else:
    x1 = (-b + math.sqrt(delta)) / (2*a)
    x2 = (-b - math.sqrt(delta)) / (2*a)
    print(f"A equação possui duas raízes reais: x1 = {x1} e x2 = {x2}")
