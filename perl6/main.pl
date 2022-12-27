# Pede para o usuário informar os coeficientes da equação
my $a = prompt "Informe o valor de a: ";
my $b = prompt "Informe o valor de b: ";
my $c = prompt "Informe o valor de c: ";

# Verifica se a equação é do segundo grau
if $a == 0 {
    say "A equação não é do segundo grau";
    exit;
}

# Calcula o delta
my $delta = $b*$b - 4*$a*$c;

# Verifica se a equação possui raízes reais
if $delta < 0 {
    say "A equação não possui raízes reais";
    exit;
}

# Calcula as raízes
my $x1 = (-$b - sqrt $delta) / (2*$a);
my $x2 = (-$b + sqrt $delta) / (2*$a);

# Imprime as raízes
say "x1 = $x1";
say "x2 = $x2";

