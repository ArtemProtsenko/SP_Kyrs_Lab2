#include <iostream>
#include <stdio.h>
#include "calculator.h"

int main(int argc, char **argv){
    Calculator calc;

    std::cout << "4 + 5 = " << calc.Add(4, 5) << std::endl;

    return 0;
}