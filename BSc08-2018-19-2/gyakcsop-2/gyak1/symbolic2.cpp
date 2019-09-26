// ford�t�s: g++ symbolic2.cpp -o symbolic2.exe -I ../SymbolicCpp/headers/


#include <iostream>
#include "symbolicc++.h"


int main()
{
    Symbolic x("x"); // x szimb�lum (most f�ggv�nyv�ltoz�nak haszn�ljuk)

    Symbolic f("f");
    f = pow(x,Symbolic(5)) + 6*pow(x,Symbolic(2)) - 10; // szimbolikus kifejez�s (f�ggv�ny)

    // ez is helyes deklar�ci�:
    //Symbolic f = pow(x,Symbolic(5)) + 6*pow(x,Symbolic(2)) - 10;

    std::cout << "f(x) = " << f << std::endl;
    std::cout << "f'(x) = " << df(f, x) << std::endl; // deriv�l�s x v�ltoz� szerint
    std::cout << "f''(x) = " << df(df(f, x), x) << std::endl;
    std::cout << "int f dx = " << integrate(f, x) << std::endl; // integr�l�s x v�ltoz� szerint

    return 0;
}
