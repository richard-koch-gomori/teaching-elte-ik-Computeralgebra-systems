// fordítás: g++ symbolic4.cpp -o symbolic4.exe -I ../SymbolicCpp/headers/


#include <iostream>
#include "../SymbolicCpp/headers/symbolicc++.h"


int main()
{
    // 2x3-as mátrix deklarálása
    Symbolic A("A", 2, 3);
    A = (
    (Symbolic(-1), Symbolic(3), Symbolic(5)),
    (Symbolic(3), Symbolic(-5), Symbolic(5))
    );

    // ez is helyes deklaráció:
    Symbolic B = (
    (Symbolic(-1), Symbolic(-1), Symbolic(-1)),
    (Symbolic(2), Symbolic(2), Symbolic(2))
    );

    std::cout << "A = " << A << std::endl << "B = " << B << std::endl;

    Symbolic C;
    C = A + B;
    std::cout << "C = A + B = " << C << std::endl;

    Symbolic D = (
    (Symbolic(2), Symbolic(-1), Symbolic(7)),
    (Symbolic(-2), Symbolic(8), Symbolic(2)),
    (Symbolic(-5), Symbolic(2), Symbolic(10))
    );

    Symbolic v("v", 3); // 3 komponensbõl álló vektor
    v = (Symbolic(2), Symbolic(-1), Symbolic(5));

    std::cout << "D = " << D << std::endl << "v = " << v << std::endl;
    std::cout << "D^-1 = " << D.inverse() << std::endl << "v = " << v << std::endl;
    std::cout << "D*v = " << D*v.transpose() << std::endl; // 3x3-as mátrix szorzása oszlopvektorral

    Symbolic alpha("alpha");
    Symbolic M = ( // síkbeli forgatómátrix
    (cos(alpha), sin(alpha)),
    (-sin(alpha), cos(alpha))
    );

    std::cout << "M = " << M << std::endl;
    std::cout << "M^-1 = " << M.inverse() << std::endl;
    std::cout << "M when alpha=0 = " << M[alpha == 0] << std::endl;
    std::cout << "M when alpha=210 = " << M[alpha == 210] << std::endl;
    std::cout << "det(M) = " << M.determinant() << std::endl;
    std::cout << "det(M)(112) = " << M.determinant()[alpha == 112] << std::endl;

    return 0;
}
