// Rational t�pus
// Szimbolikus t�rtsz�mok ADT-je, defini�lt als� ill fels� hat�r n�lk�l
// Template param�terrel megadhatjuk, milyen t�pusk�nt t�rolja a sz�ml�l�t �s a nevez�t, nek�nk ez mindig Verylong lesz
// Szok�sos aritmetikai oper�torok, �sszehasonl�t�s is


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

