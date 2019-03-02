// Polynomial típus
// template paraméter: együtthatók ill változó típusa


#include <iostream>
#include "polynomial.h"
#include "rational.h"
#include "verylong.h"
#include "symbolicc++.h"


int main()
{
    Polynomial<int> x("x");
    Polynomial<int> p1("p");
    p1 = -(x^5) + 10*(x^3) - (x^2) + 10; // a hatványokat fontos zárójelbe () tenni a ^ operátor precedenciája miatt
    std::cout << "p1(x) = " << p1 << std::endl;
    std::cout << "p1(1) = " << p1(1) << std::endl;
    std::cout << "dp1/dx = " << p1.Diff("x") << std::endl;
    std::cout << "int p1 dx = " << p1.Int("x") << std::endl << std::endl;

    Polynomial<double> y("y");
    Polynomial<double> p2("p2");
    p2 = -(y^5) + 10.0*(y^3) - (y^2) + 10;
    std::cout << "p2(y) = " << p2 << std::endl;
    std::cout << "p2(1) = " << p2(1) << std::endl;
    std::cout << "dp2/dy = " << p2.Diff("y") << std::endl;
    std::cout << "int p2 dy = " << p2.Int("y") << std::endl << std::endl;

    Polynomial<Rational<Verylong> > z("z");
    Polynomial<Rational<Verylong> > p3("p");
    p3 = -(z^5) + Rational<Verylong>(10)*(z^3) - (z^2) + 10;
    std::cout << "p3(z) = " << p3 << std::endl;
    std::cout << "p3(1) = " << p3(1) << std::endl;
    std::cout << "dp3/dz = " << p3.Diff("z") << std::endl;
    std::cout << "int p3 dz = " << p3.Int("z") << std::endl << std::endl;

    Polynomial<Rational<Verylong> > a("a");
    Polynomial<Rational<Verylong> > p4("p4");
    p4 = Rational<Verylong>(3)*(a^4) - Rational<Verylong>(42)*(a^3) + Rational<Verylong>(3)*(a^2) + Rational<Verylong>(1008)*a - 2160;
    std::cout << "p4(a) = " << p4 << std::endl;

    Polynomial<Rational<Verylong> > p5("p5");
    p5 = (a^2) - Rational<Verylong>(15)*a + 36;
    std::cout << "p5(a) = " << p5 << std::endl;

    std::cout << "p4 / p5 = " << p4 / p5 << std::endl;
    std::cout << "p4 % p5 = " << p4 % p5 << std::endl;
    std::cout << "p4 % ((a + 4) * (a - 2)) = " << p4 % ((a + 4) * (a - 2)) << std::endl;

    return 0;
}

