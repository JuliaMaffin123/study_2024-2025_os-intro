#include <stdio.h>
#include <stdlib.h>

int main() {
    int number;
    
    printf("Введите число: ");
    scanf("%d", &number);

    if (number > 0)
        exit(1); // Число больше нуля
    else if (number < 0)
        exit(2); // Число меньше нуля
    else
        exit(0); // Число равно нулю
}
