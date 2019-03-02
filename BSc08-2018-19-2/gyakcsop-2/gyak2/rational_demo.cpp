// Rational típus
// Szimbolikus törtszámok ADT-je, definiált alsó ill felsõ határ nélkül
// Template paraméterrel megadhatjuk, milyen típusként tárolja a számlálót és a nevezõt, nekünk ez mindig Verylong lesz
// Szokásos aritmetikai operátorok, összehasonlítás is


#include <iostream>
#include "rational.h"
#include "verylong.h"
#include "symbolicc++.h"


int main()
{
    Rational<Verylong> x("x");
    x = Rational<Verylong> (5);
    std::cout << "x = " << x << std::endl;
    x = Rational<Verylong>(5, 1001);
    std::cout << "x = " << x << std::endl;
    std::cout << (x > Rational<Verylong>(0)) << std::endl;
    std::cout << double(x) << std::endl;

    return 0;
}

