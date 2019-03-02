// Bekérdezett tört elõjele, rossz példa


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
    //else if (x > 0) sign = 1; // nem fordul, Symbolic-nak nincsenek relációs operátorai
    else if (double(x) > 0) // mûködik, de nem szép szimbolikus számításról áttérni numerikusra
    // a helyes megoldás: tudjuk hogy csak törteket akarunk kezelni, felesleges ekkor a Symbolic,
    // továbbá a Rational osztálynak vannak relációs operátorai
        sign = 1;
    else
        sign = -1;

    std::cout << "signum: " << sign << std::endl;

    return 0;
}

