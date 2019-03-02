// Egyenl�s�gvizsg�lat


#include <iostream>
#include "symbolicc++.h"


int main()
{
    Symbolic x("x"), y("y");
    Equation eq1 = (y == 2*x + 5); // l�trehozza az y=2*x+5 egyenl�s�get
    if (eq1) // az Equation oszt�ly objektumai bool-� konvert�lhat�ak
        std::cout << "eq1 is true" << std::endl;
    else
        std::cout << "eq1 is false" << std::endl;

    x = 1;
    y = 7;
    Equation eq2 = (y == 2*x + 5);
    if (eq2)
        std::cout << "eq2 is true" << std::endl;
    else
        std::cout << "eq2 is false" << std::endl;

    x = ln(sqrt(3) + exp(10) - cos(2));
    y = 2*ln(sqrt(3) + exp(10) - cos(2)) + 5;
    Equation eq3 = (y == 2*x + 5);
    if (eq3)
        std::cout << "eq3 is true" << std::endl;
    else
        std::cout << "eq3 is false" << std::endl;

    Equation eq4 = (pow(x + 1, Symbolic(2)) == pow(x, Symbolic(2)) + 2*x + 1); // (x+1)^2 == x^2 + 2x + 1
    if (eq4)
        std::cout << "eq4 is true" << std::endl;
    else
        std::cout << "eq4 is false" << std::endl;

    if ((pow(x + 1, Symbolic(2)) == pow(x, Symbolic(2)) + 2*x + 1))
        std::cout << "Symbolic equality is true" << std::endl;
    else
        std::cout << "Symbolic equality is false" << std::endl;

    return 0;
}

