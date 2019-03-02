// Intervallumfelezés


#include <iostream>
#include "verylong.h"
#include "rational.h"
#include "polynomial.h"
#include "symbolicc++.h"


int sign(const Rational<Verylong>& rat)
{
    if (rat == Rational<Verylong>(0))
        return 0;
    else if (rat > Rational<Verylong>(0))
        return 1;
    else
        return -1;
}


Rational<Verylong> bisection(const Polynomial<Rational<Verylong> >& f, const Rational<Verylong>& a, const Rational<Verylong>& b,
    const Rational<Verylong>& epsilon, const int nmax, bool& success, int& num_of_iterations)
{
    int n = 1;
    Rational<Verylong> fa(a);
    Rational<Verylong> fb(b);
    success = false;
    Rational<Verylong> c;
    while (n <= nmax)
    {
        c = (fa + fb) / Rational<Verylong>(2);
        std::cout << "c = " << c << std::endl << "f(c) = " << f(c) << std::endl << std::endl;
        if (f(c) == Rational<Verylong>(0) || (fb - fa) / Rational<Verylong>(2) < epsilon)
        {
            num_of_iterations = n;
            success = true;
            return c;
        }
        ++n;
        if (sign(f(c)) == sign(f(fa)))
            fa = c;
        else
            fb = c;
    }
    success = false;
    return c;
}


int main()
{
    Polynomial<Rational<Verylong> > x("x");
    Polynomial<Rational<Verylong> > poly = (x^3) - x - 2;
    bool success;
    int num_of_iterations;

    std::cout << "poly(x) = " << poly << std::endl << std::endl;

    Rational<Verylong> sol = bisection(poly, Rational<Verylong>(1), Rational<Verylong>(2), Rational<Verylong>("1/10000000000000000000000000"), 1000000, success, num_of_iterations);

    if (success)
        std::cout << "The method exited after " << num_of_iterations << " iterations, the solution: " << sol << ", double(sol) = " << double(sol) << std::endl;
    else
        std::cout << "Method failed with " << sol << ", double(sol) = " << double(sol) << std::endl;

    return 0;
}


