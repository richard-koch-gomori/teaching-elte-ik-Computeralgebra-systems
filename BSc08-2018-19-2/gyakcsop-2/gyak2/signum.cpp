// Bekérdezett tört elõjele


#include <iostream>
#include "rational.h"
#include "verylong.h"
#include "symbolicc++.h"


int sign(const Rational<Verylong>& rat)
{
    if (rat == Rational<Verylong> (0))
        return 0;
    else if (rat > Rational<Verylong> (0))
        return 1;
    else
        return -1;
}


int main()
{
    int num, den;

    std::cout << "Enter the numerator: ";
    std::cin >> num;
    std::cout << "Enter the denominator: ";
    std::cin >> den;

    Rational<Verylong> x("x");
    x = Rational<Verylong>(num) / Rational<Verylong>(den);
    std::cout << "The symbolic fraction: " << x << std::endl;
    std::cout << "sign: " << sign(x) << std::endl;

    return 0;
}

