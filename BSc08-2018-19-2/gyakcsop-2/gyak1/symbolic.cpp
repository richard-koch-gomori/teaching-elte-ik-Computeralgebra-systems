// fordítás: g++ symbolic.cpp -o symbolic.exe -I ../SymbolicCpp/headers/


#include <iostream>
#include "symbolicc++.h"


int main()
{
    Symbolic a("a");
    Symbolic b("b");
    a = Symbolic(0); // a 0 szimbolikus tárolása
    b = Symbolic(1)/Symbolic(1000); // az 1/1000 szimbolikus tárolása

    std::cout << a - 0 << std::endl;

    for (int idx = 0; idx < 1000; ++idx)
    {
        a = a + b;
    }
    std::cout << a - 1 << std::endl; // a szimbolikus számítás miatt nincs numerikus hiba

    a = 0;
    for (int idx = 0; idx < 10000; ++idx)
    {
        a = a + b;
    }
    std::cout << a - 10 << std::endl; // a szimbolikus számítás miatt nincs numerikus hiba

    Symbolic c("c");
    Symbolic d("d");
    c = Symbolic(2019000000);
    d = Symbolic(2018000000);
    Symbolic res1 = sqrt(c) - sqrt(d); // a pontos érték kerül a képernyõre
    Symbolic res2 = Symbolic(1) / (sqrt(c) + sqrt(d)); // a pontos érték kerül a képernyõre
    std::cout << "res1 = " << res1 << std::endl << "res2 = " << res2 << std::endl;

    return 0;
}
