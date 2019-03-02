// Iterációs módszer LER megoldására


#include <iostream>
#include "rational.h"
#include "verylong.h"
#include "vector.h"
#include "matrix.h"
#include "symbolicc++.h"


int main()
{
    Matrix<Rational<Verylong> > M(3, 3);
    M[0][0] = Rational<Verylong>(4, 10); M[0][1] = Rational<Verylong>(1, 10); M[0][2] = Rational<Verylong>(0);
    M[1][0] = Rational<Verylong>(1, 10); M[1][1] = Rational<Verylong>(3, 10); M[1][2] = Rational<Verylong>(2, 10);
    M[2][0] = Rational<Verylong>(0); M[2][1] = Rational<Verylong>(1, 10); M[2][2] = Rational<Verylong>(4, 10);

    Vector<Rational<Verylong> > c(3);
    c[0] = Rational<Verylong>(1, 10); c[1] = Rational<Verylong>(5, 10); c[2] = Rational<Verylong>(1, 10);

    Vector<Rational<Verylong> > xnext(3);
    xnext[0] = Rational<Verylong>(0); xnext[1] = Rational<Verylong>(0); xnext[2] = Rational<Verylong>(0);

    std::cout << "M = " << std::endl << M << std::endl;

    int N = 0;
    const int NMAX = 10;

    while (N <= NMAX)
    {
        xnext = M*xnext + c;
        std::cout << "xnext = " << std::endl << xnext << std::endl;
        ++N;
    }

    return 0;
}

