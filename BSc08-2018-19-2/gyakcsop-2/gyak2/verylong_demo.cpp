// Verylong t�pus
// Szimbolikus eg�sz sz�mok ADT-je, defini�lt als� ill fels� hat�r n�lk�l
// Szok�sos aritmetikai oper�torok, �sszehasonl�t�s is


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

