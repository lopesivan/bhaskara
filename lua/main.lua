-- Solicita os coeficientes da equação ao usuário
io.write("Informe o coeficiente a: ")
a = io.read("*n")
io.write("Informe o coeficiente b: ")
b = io.read("*n")
io.write("Informe o coeficiente c: ")
c = io.read("*n")

-- Calcula as raízes da equação utilizando a fórmula de Bhaskara
delta = b^2 - 4*a*c
if delta < 0 then
    print("A equação não possui raízes reais.")
elseif delta == 0 then
    x = -b / (2*a)
    print(string.format("A equação possui uma raiz real: x = %.2f", x))
else
    x1 = (-b + math.sqrt(delta)) / (2*a)
    x2 = (-b - math.sqrt(delta)) / (2*a)
    print(string.format("A equação possui duas raízes reais: x1 = %.2f e x2 = %.2f", x1, x2))
end

