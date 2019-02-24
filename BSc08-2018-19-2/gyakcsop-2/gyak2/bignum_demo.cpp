// Nagy számok


#include <iostream>
#include <climits>
#include "../SymbolicCpp/headers/symbolicc++.h"


int main()
{
    std::cout << "INT_MAX = " << INT_MAX << std::endl;

    int a = 2000000000;
    int b = 2000000000;
    int c = a + b;
    std::cout << "c = " << c << std::endl;

    Symbolic x = 2000000000;
    Symbolic y = 2000000000;
    Symbolic z = x + y;
    std::cout << "z = " << z << std::endl;

    Symbolic big1 = pow(Symbolic(1000000), Symbolic(1000));
    std::cout << "big1 = " << big1 << std::endl << std::endl;
    Symbolic big2 = big1 + big1;
    std::cout << "big2 = " << big2 << std::endl;

    return 0;
}

