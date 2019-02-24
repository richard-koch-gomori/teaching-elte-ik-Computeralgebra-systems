// Kommutativit�s


#include <iostream>
#include "../SymbolicCpp/headers/symbolicc++.h"


int main()
{
    Symbolic x("x"), y("y"); // x-t �s y-t alap�rtelmez�s szerint fel szabad cser�lni
    std::cout << x*y + y*x << std::endl;

    x = ~x; // x-re nem lehet alkalmazni a felcser�lhet�s�get
    y = ~y; // y-ra nem lehet alkalmazni a felcser�lhet�s�get

    Symbolic f = x*y + y*x;
    std::cout << f << std::endl;
    std::cout << "f(2,3) = " << f[x == 2, y == 3] << std::endl;

    return 0;
}

