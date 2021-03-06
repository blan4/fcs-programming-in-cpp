# Практика 0

## В классе

Настройка окружения.

## Дома

Читать [Главу 1 из книги K&R](http://givi.olnd.ru/kr2/01.html).

### Задача 1. (Упражнение 1.4.)

Напишите программы печати таблицы перехода от градусов Цельсия к градусам Фаренгейта от 0 до 300 градусов.

#### Подсказки:
- в Главе 1 описана обратная задача.

### Задача 2. (Упражнение 1.8.)

Напишите программу для подсчета пробелов и табуляций.

#### Сценарий использования:
- запускается приложение.
- пользователь "вводит" текст с клавиатуры.
- когда пользователь нажимает Enter, то программа выводит сколько пробелов и табуляций было нажато во время ввода текста.

#### Подсказки:
- Для считывания символа используйте getchar() из `#include <stdio.h>`.
- `\t` - табуляция, `\n` - новая строка, Enter.
- то есть кружим while пока не пришел `\n`.

### Задача 3. (Упражнение 1.9)

Напишите программу, копирующую литеры ввода в выходной поток и заменяющую подряд стоящие пробелы на один пробел. Программа завершает свою работу, когда пользователь нажал на Enter.

#### Сецнарий использования:
- запускаем приложение.
- приложение ожидает ввода от пользователя.
- пользоваель жмет кнопки, пробелы, буквы.
- как только пользователь нажал на enter, приложение завершает работу.
- при завершении вы увидите в консоли "скопированный" вывод без повторяющихся пробелов.

Пример:
```bash
➔ ./a.out # это запуск приложения
asdqwe asd   awd # <- это вводили
asdqwe asd awd # <- это получили
```

#### Подсказки:
- используйте `getchar` и `putchar` из `#include <stdio.h>`.
- вам **НЕ** нужны массивы.
- используйте `do {} while()`;

