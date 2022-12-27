# Solicita os coeficientes da equação ao usuário
print "Informe o coeficiente a: "
a = gets.to_f
print "Informe o coeficiente b: "
b = gets.to_f
print "Informe o coeficiente c: "
c = gets.to_f

# Calcula as raízes da equação utilizando a fórmula de Bhaskara
delta = b**2 - 4*a*c
if delta < 0
    puts "A equação não possui raízes reais."
elsif delta == 0
    x = -b / (2*a)
    puts "A equação possui uma raiz real: x = #{x}"
else
    x1 = (-b + Math.sqrt(delta)) / (2*a)
    x2 = (-b - Math.sqrt(delta)) / (2*a)
    puts "A equação possui duas raízes reais: x1 = #{x1} e x2 = #{x2}"
end

