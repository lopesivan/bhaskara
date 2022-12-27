#include <stdio.h>
#include <math.h>

int main()
{
    // Coeficientes da equação
    double a, b, c;

    // Pede para o usuário informar os coeficientes da equação
    printf ("Informe o valor de a: ");
    scanf ("%lf", &a);
    printf ("Informe o valor de b: ");
    scanf ("%lf", &b);
    printf ("Informe o valor de c: ");
    scanf ("%lf", &c);

    // Verifica se a equação é do segundo grau
    if (a == 0)
    {
        printf ("A equação não é do segundo grau\n");
        return 0;
    }

    // Calcula o delta
    double delta = b * b - 4 * a * c;

    // Verifica se a equação possui raízes reais
    if (delta < 0)
    {
        printf ("A equação não possui raízes reais\n");
        return 0;
    }

    // Calcula as raízes
    double x1 = (-b - sqrt (delta)) / (2 * a);
    double x2 = (-b + sqrt (delta)) / (2 * a);

    // Imprime as raízes
    printf ("x1 = %lf\n", x1);
    printf ("x2 = %lf\n", x2);

    return 0;
}
