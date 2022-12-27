#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    // Coeficientes da equação
    double a, b, c;

    // Pede para o usuário informar os coeficientes da equação
    cout << "Informe o valor de a: ";
    cin >> a;
    cout << "Informe o valor de b: ";
    cin >> b;
    cout << "Informe o valor de c: ";
    cin >> c;

    // Verifica se a equação é do segundo grau
    if (a == 0)
    {
        cout << "A equação não é do segundo grau" << endl;
        return 0;
    }

    // Calcula o delta
    double delta = b * b - 4 * a * c;

    // Verifica se a equação possui raízes reais
    if (delta < 0)
    {
        cout << "A equação não possui raízes reais" << endl;
        return 0;
    }

    // Calcula as raízes
    double x1 = (-b - sqrt (delta)) / (2 * a);
    double x2 = (-b + sqrt (delta)) / (2 * a);

    // Imprime as raízes
    cout << "x1 = " << x1 << endl;
    cout << "x2 = " << x2 << endl;

    return 0;
}
