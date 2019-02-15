// fordítás: g++ numeric.cpp -o numeric.exe


#include <iostream>
#include <cmath>


int main()
{
    double a = 0;
    double b = 1/1000.0;

    std::cout << a - 0 << std::endl; // Matematikailag 0-t kellene kapnunk

    for (int idx = 0; idx < 1000; ++idx)
    {
        a = a + b; // numerikus hiba
    }
    std::cout << a - 1 << std::endl; // Matematikailag 0-t kellene kapnunk

    a = 0;
    for (int idx = 0; idx < 10000; ++idx)
    {
        a = a + b; // numerikus hiba
    }
    std::cout << a - 10 << std::endl; // Matematikailag 0-t kellene kapnunk

    double c = sqrt(2019000000);
    double d = sqrt(2018000000);
    double res1 = c - d;
    double res2 = 1 / (sqrt(c) + sqrt(d));
    std::cout << "res1 = " << res1 << std::endl << "res2 = " << res2 << std::endl;

    return 0;
}
