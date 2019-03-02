

#include <iostream>


int main()
{
    int x;
    x = 1, 2, 3; // a vesszõ operátor precedenciája alacsonyabb mint az értékadásé
    std::cout << "x = " << x << std::endl;

    int y = (1, 2, 3); // a vesszõ operátor a jobb oldali operandussal tér vissza
    std::cout << "y = " << y << std::endl;

    return 0;
}

