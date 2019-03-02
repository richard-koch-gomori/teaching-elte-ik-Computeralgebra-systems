// Verylong típus
// Szimbolikus egész számok ADT-je, definiált alsó ill felsõ határ nélkül
// Szokásos aritmetikai operátorok, összehasonlítás is


#include <iostream>
#include "verylong.h"
#include "symbolicc++.h"


int main()
{
    Verylong x("x");
    x = 5423523;
    std::cout << x << std::endl;

    Verylong y("20000000000000000000000000000000000000000000000000000000000000000000000000000000000000000");
    std::cout << y << std::endl << Verylong(2)*y << std::endl;

    std::cout << (x > Verylong(0)) << std::endl << (y <= Verylong(0)) << std::endl;
    std::cout << int(x) << std::endl << int(y) << std::endl;

    return 0;
}

