// Matrix ADT demo


#include <iostream>
#include "rational.h"
#include "verylong.h"
#include "matrix.h"
#include "matnorm.h"
#include "symbolicc++.h"


int main()
{
    Matrix<Rational<Verylong> > M(4, 4); // 7x7-es mátrix
    M[0][0] = Rational<Verylong>(14, 6); M[0][1] = Rational<Verylong>(-4, 7); M[0][2] = Rational<Verylong>(1, 45); M[0][3] = Rational<Verylong>(-10, 51);
    M[1][0] = Rational<Verylong>(3, 5); M[1][1] = Rational<Verylong>(11, 7); M[1][2] = Rational<Verylong>(32, 11); M[1][3] = Rational<Verylong>(-88, 51);
    M[2][0] = Rational<Verylong>(89, 10); M[2][1] = Rational<Verylong>(-4, 67); M[2][2] = Rational<Verylong>(176, 445); M[2][3] = Rational<Verylong>(10, 23);
    M[3][0] = Rational<Verylong>(-134, 8); M[3][1] = Rational<Verylong>(-4, 88); M[3][2] = Rational<Verylong>(-56, 425); M[3][3] = Rational<Verylong>(-4, 58);
    std::cout << "M = " << std::endl << M << std::endl;
    std::cout << "M*M*M = " << std::endl << M*M*M << std::endl;
    std::cout << "M.inverse() = " << std::endl << M.inverse() << std::endl;
    std::cout << "M.determinant() = " << M.determinant() << std::endl;
    std::cout << "M.trace() = " << M.trace() << std::endl;
    std::cout << "norm1(M) = " << norm1(M) << std::endl; // 1-es norma
    std::cout << "normI(M) = " << normI(M) << std::endl; // végtelen norma

    return 0;
}

