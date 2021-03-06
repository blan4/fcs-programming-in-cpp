# Практика 2

В этот раз посмотрим, как работать с функциями с Си. Рассмотрим рекурсивные алгоритмы, напишем пару утилитных методов. Поработаем над передачей переменных через аргументы функции.

Чтобы лучше понять рекурсию рекомендуется прочитать главы 1.2.1 и 1.2.2 книги ["Структура и интерпретация компьютерных программ"](http://newstar.rinet.ru/~goga/sicp/sicp.pdf), страница 48.

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

### Задание 1. Калькуляции.

Реализуйте следйющие простейшие математические операции в виде функций над вещественными числами.

- сумма 2 чисел
- разность 2 числе
- произведение 2 чисел
- деление 2 чисел
- возведение числа в степень (степень - целое число, в том числе отрицательное)
- модуль числа

Используя эти функции и только эти функции запишите выражение:
$$\frac{\frac{3^7}{2-5}}{|0.3 \cdot 21 - 2^6|^2} + \frac{1}{-3^{-2}}$$

### Задание 2. Байтомешалка.

Напишите функцию invert(x, p, n), возвращающую значение x с инвертированными n битами, начиная с позиции p (остальные биты не изменяются). Протестируйте работу программы на разных данных. Запишите в main функции 5 разных вызово invert и сравнение с ожидаемыми значениями. Выведите в консоль результаты invert.

Пример: пусть дано число `42==00101010b`. Тогда `invert(42, 3, 4)==invert(00101010b, 3, 4)==00100101b==37`.

### Задание 3. Фибоначчи.

Напишите рекурсивную функцию, вычисляющую N-ый символ последовательности Фибоначчи. Протестируйте работу программы на разных данных.

### Задание 4. Сумма цифр.

Посчитайте сумму цифр числа используя рекурсию. (в прошлый раз были циклы). Например, для числа `1234` сумма равна `1+2+3+4=10`.

### Задание 5. Возведение в степень.

Напишите программу, возводящее число в степень с помощью рекурсии.  
Разрешено использовать только умножение, вычитание, сложение и рекурсию. НЕЛЬЗЯ использовать циклы (while, for).

$$
\begin{aligned}
b^n = b * b^{n-1} \\\\
b^0 = 1
\end{aligned}
$$

### Задание 6. Быстрое возведение в степень

Существует более быстрый алгоритм возведения числа в степень, основывающийся на следующем наблюдении:

$$
\begin{aligned}
b ^ n = {(b^{n/2})} ^ 2 && if \ n \ is \ even \\\\
b ^ n = b * b^{n-1} && if \ n \ is \ odd
\end{aligned}
$$

А также примите во внимание факт, что

$$
(b^{n/2})^2 = (b^2) ^ {n/2}
$$

Реализуйте быстрое возведение в степень с помощью рекурсии.  
Разрешено использовать только умножение, вычитание, сложение и рекурсию.

### Задание 7. Вычисление квадратного корня числа.

$$ \sqrt{x} = y, \ where \ y \ge{0} \ and \ y^2 = x $$

Использовать [метод Ньютона](https://ru.wikipedia.org/wiki/Метод_Ньютона).

#### Hints

Для решения задачи можно прочитать главу 1.1.7 \(стр 40\) из книги ["Структура и интерпретация компьютерных программ"](http://newstar.rinet.ru/~goga/sicp/sicp.pdf). Там используется в примерах язык Lisp, но это не должно пугать.

### Задание 8. Ханойская башня

Даны 1 пирамидка с дисками разного размера, и еще 2 пустые пирамидки.   
Надо переместить диски с одной пирамидки на другую.   
Перекладывать можно только по одному диску за ход.   
Складывать диски можно только меньший на больший.

Хорошее описание [тут](https://m.habrahabr.ru/post/200758/).

![Ханойская башня](https://habrastorage.org/getpro/habr/post_images/acb/9ab/caf/acb9abcaf951f040ff7a367e7b1458d7.gif)

Выводите в консоль процесс перекладывания дисков. (Откуда - Куда). Или выводите состояние пирамидок на каждом шаге.

## Домашнее задание.

Читать главу [3](http://givi.olnd.ru/kr2/03.html) K&R.
