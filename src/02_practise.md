# Практика 2.

В этот раз посмотрим, как работать с функциями с Си. Рассмотрим рекурсивные алгоритмы, напишем пару утилитных методов. Поработаем над передачей переменных через аргументы функции.

## Примеры

```c
#include<stdio.h>

/**
 * В этих переменных копии переменных, 
 * которые были переданы как аргументы функции
 **/
int add(int a, int b) {
    return a + b;
}

int scalar_mul(int x[], int y[], unsigned int size) {
    int accum = 0;
    for (int i = 0; i < size; i++) {
        accum += x[i]*y[i];
    }
    return accum;
}

// Рекурсия!!!
// Функция может вызвать саму себя.
int recursion(int i) {
    if (i <= 0) return 0; // Главное не забудьте указать условие, когда надо остановиться.
    return i + recursion(i - 1);
}

int main(void) {
  int a = 100500; // эта переменная a не имеет отношению к аргументу функции add 
  int x = 42;
  int y = 2;
  int z = add(x, y); // теперь a = x, b = y.
  printf("%d\n", z); // z == 44
  
  int arr1[] = {1,2,3,4,5};
  int arr2[] = {5,4,3,2,1};
  printf("%d\n", scalar_mul(arr1, arr2, 5)); // 1*5+2*4+3*3+4*2+5*1
  
  printf("%d\n", recursion(5)); // 5 + 4 + 3 + 2 + 1 + 0
}
```

## Задания