use std::io;

fn main() {
    // Coeficientes da equação
    let mut a = String::new();
    let mut b = String::new();
    let mut c = String::new();

    // Pede para o usuário informar os coeficientes da equação
    println!("Informe o valor de a: ");
    io::stdin().read_line(&mut a).expect("Erro ao ler o valor de a");
    println!("Informe o valor de b: ");
    io::stdin().read_line(&mut b).expect("Erro ao ler o valor de b");
    println!("Informe o valor de c: ");
    io::stdin().read_line(&mut c).expect("Erro ao ler o valor de c");

    // Converte os coeficientes para f64
    let a: f64 = a.trim().parse().expect("Erro ao converter o valor de a para f64");
    let b: f64 = b.trim().parse().expect("Erro ao converter o valor de b para f64");
    let c: f64 = c.trim().parse().expect("Erro ao converter o valor de c para f64");

    // Verifica se a equação é do segundo grau
    if a == 0.0 {
        println!("A equação não é do segundo grau");
        return;
    }

    // Calcula o delta
    let delta = b*b - 4.0*a*c;

    // Verifica se a equação possui raízes reais
    if delta < 0.0 {
        println!("A equação não possui raízes reais");
        return;
    }

    // Calcula as raízes
    let x1 = (-b - delta.sqrt()) / (2.0*a);
    let x2 = (-b + delta.sqrt()) / (2.0*a);

    // Imprime as raízes
    println!("x1 = {}", x1);
    println!("x2 = {}", x2);
}

