

#include <iostream>


int main()
{
    int x;
    x = 1, 2, 3; // a vessz� oper�tor precedenci�ja alacsonyabb mint az �rt�kad�s�
    std::cout << "x = " << x << std::endl;

    int y = (1, 2, 3); // a vessz� oper�tor a jobb oldali operandussal t�r vissza
    std::cout << "y = " << y << std::endl;

    return 0;
}

