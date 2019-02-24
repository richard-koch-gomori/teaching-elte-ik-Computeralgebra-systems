// Konverzió szimbolikusról int,double-re


#include <iostream>
#include "../SymbolicCpp/headers/symbolicc++.h"


int main()
{
    Symbolic x("x"), y("y");
    y = 10*x + 7;

    int i = int(y[x == 2]); // 27
    std::cout << i << std::endl;

    //int j = int(y[x == Symbolic(1)/Symbolic(20)]); // 15/2, de hiba: nem lehet int-é cast-olni
    //std::cout << j << std::endl;

    double k = double(y[x == Symbolic(1)/Symbolic(20)]); // 7.5
    std::cout << k << std::endl;

    y = ln(x);
    std::cout << double(y[x == 1]) << std::endl;
    //std::cout << double(y[x == 2]) << std::endl;

    y = exp(x);
    //std::cout << double(y[x == 1]) << std::endl;

    Symbolic f("f");
    f = pow(x,Symbolic(5)) + 6*pow(x,Symbolic(2)) - 10;
    std::cout << "f(x) = " << f << std::endl;
    Symbolic f_5 = f[x == 5];
    std::cout << "f(5) = " << f_5 << std::endl;
    std::cout << "as double: " << double(f_5) << std::endl;
    Symbolic f_5_100 = f[x == Symbolic(5)/Symbolic(100)];
    std::cout << "f(5/100) = " << f_5_100 << std::endl;
    std::cout << "as double: " << double(f_5_100) << std::endl << std::endl;

    Symbolic w("w"), z("z");
    f = pow(w, Symbolic(2)) - cos(z) + exp(w*z) + Symbolic(10);
    std::cout << "f(w,z) = " << f << std::endl;
    Symbolic f_2_3 = f[w == 2, z == 3];
    std::cout << "f(2,3) = " << f_2_3 << std::endl;
    //std::cout << "as double: " << double(f_2_3) << std::endl;

    return 0;
}

