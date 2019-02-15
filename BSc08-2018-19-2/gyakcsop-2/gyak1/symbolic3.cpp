// fordítás: g++ symbolic3.cpp -o symbolic3.exe -I ../SymbolicCpp/headers/


#include <iostream>
#include "../SymbolicCpp/headers/symbolicc++.h"


int main()
{
    Symbolic x("x"), y("y"), z("z");
    Symbolic f("f");

    f = pow(y, Symbolic(2)) - cos(z) + exp(y*z) + Symbolic(10);
    std::cout << "f(y,z) = " << f << std::endl << std::endl;

    Symbolic df_dy = df(f, y);
    std::cout << "df_dy = " << df_dy << std::endl;

    Symbolic df_dz = df(f, z);
    std::cout << "df_dz = " << df_dz << std::endl;

    Symbolic df_dx = df(f, x);
    std::cout << "df_dx = " << df_dx << std::endl;

    std::cout << "f(2,3) = " << f[y == 2, z == 3] << std::endl; // a kifejezés kiértékelése a szimbólumok helyettesítésével
    std::cout << "df_dy(1, -1) = " << df_dy[y == 1, z == -1] << std::endl;
    std::cout << "df_dx(1, 100) = " << df_dx[y == 1, z == 100] << std::endl;
    std::cout << "int f dy = " << integrate(f, y) << std::endl;

    return 0;
}
