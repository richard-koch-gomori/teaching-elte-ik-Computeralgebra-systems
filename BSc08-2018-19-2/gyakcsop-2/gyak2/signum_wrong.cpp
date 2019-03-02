// Bek�rdezett t�rt el�jele, rossz p�lda


#include <iostream>
#include "symbolicc++.h"


int main()
{
    int num, den;
    std::cout << "Enter the numerator: ";
    std::cin >> num;
    std::cout << "Enter the denominator: ";
    std::cin >> den;

    Symbolic x("x");
    int sign;
    x = Symbolic(num)/Symbolic(den);
    std::cout << "The symbolic fraction: " << x << std::endl;

    if (x == 0)
        sign = 0;
    //else if (x > 0) sign = 1; // nem fordul, Symbolic-nak nincsenek rel�ci�s oper�torai
    else if (double(x) > 0) // m�k�dik, de nem sz�p szimbolikus sz�m�t�sr�l �tt�rni numerikusra
    // a helyes megold�s: tudjuk hogy csak t�rteket akarunk kezelni, felesleges ekkor a Symbolic,
    // tov�bb� a Rational oszt�lynak vannak rel�ci�s oper�torai
        sign = 1;
    else
        sign = -1;

    std::cout << "signum: " << sign << std::endl;

    return 0;
}

