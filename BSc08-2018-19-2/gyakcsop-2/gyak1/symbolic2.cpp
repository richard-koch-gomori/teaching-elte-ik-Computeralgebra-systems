// fordítás: g++ symbolic2.cpp -o symbolic2.exe -I ../SymbolicCpp/headers/


#include <iostream>
#include "symbolicc++.h"


int main()
{
    Symbolic x("x"); // x szimbólum (most függvényváltozónak használjuk)

    Symbolic f("f");
    f = pow(x,Symbolic(5)) + 6*pow(x,Symbolic(2)) - 10; // szimbolikus kifejezés (függvény)

    // ez is helyes deklaráció:
    //Symbolic f = pow(x,Symbolic(5)) + 6*pow(x,Symbolic(2)) - 10;

    std::cout << "f(x) = " << f << std::endl;
    std::cout << "f'(x) = " << df(f, x) << std::endl; // deriválás x változó szerint
    std::cout << "f''(x) = " << df(df(f, x), x) << std::endl;
    std::cout << "int f dx = " << integrate(f, x) << std::endl; // integrálás x változó szerint

    return 0;
}
