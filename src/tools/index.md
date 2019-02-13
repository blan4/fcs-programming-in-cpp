# Инструменты

Далее список инструментов и их сравнение. Выбирайте тот, который больше всего понравился.

## Онлайн компилятор [repl.it](https://repl.it/)

#### Плюсы: 
- ничего не надо ставить на свой компьютер

#### Минусы: 
- без интернета не работает
- нет отладчика

## Онлайн компилятор [www.onlinegdb.com](https://www.onlinegdb.com/)

#### Плюсы: 
- ничего не надо ставить на свой компьютер,
- есть отладчик
- можно залогиниться и хранить код там

#### Минсуы:
- без интернета не работает
- может забанить по ip

## Virtual-C IDE

Качаем и ставим [Virtual-C IDE](https://sites.google.com/site/virtualcide/).  
Запускаем и просто пишем код.

#### Плюсы
- работает без интернета
- визуализация стека, кучи
- пошаговое выполнение программы
- отладка

#### Минусы
- игрушечный компилятор С (без С++)
- могут быть баги

## Tiny C Compiler + VScode

Устанавливаем [VScode](https://code.visualstudio.com/).  
Внутри VScode устанавливаем расширение [TCC compile/run](https://marketplace.visualstudio.com/items?itemName=TuyMove.tcc-compiler).  
Пишем код, жмем F10.

#### Плюсы:
- легковесный компилятор и редактор
- работает без интернета

#### Минусы:
- нет отладчика

## MinGW-64 + VScode

[Описание установки.](vscode_mingw.md)

#### Плюсы
- работает без интернета
- легковесный компилятор и редактор
- есть отладка
- готово для промышленной разработки

#### Минусы
- надо разобраться как ставить расширение и настраивать отладку
- конфиги launch.json и tasks.json надо написать самому

## MinGW-64 + Eclipse CDT

Качаем MinGW-64 с [официального сайта](https://sourceforge.net/projects/mingw-w64/).  
Устанавливаем пакет в папку `C:\mingw-64`  
Качаем [Eclipse](http://www.eclipse.org/downloads/packages/release/photon/r/eclipse-ide-cc-developers)  
Запускаем eclipse, настриваем воркспейс, создаем папку для каждой лабы.  

Туториалы:
- [установка компилятора на windows](https://www.coursera.org/lecture/c-plus-plus-white/ustanovka-kompiliatora-na-windows-1Gn0y)
- [установка eclipse](https://www.coursera.org/lecture/c-plus-plus-white/ustanovka-eclipse-na-windows-2g3LN)
- [создание проекта](https://www.coursera.org/lecture/c-plus-plus-white/sozdaniie-proiekta-v-eclipse-w9ane)

#### Плюсы
- работает без интернета
- полноценная IDE с автодополнением кода и подсказками
- полноценная отладка
- легковесный компилятор
- все лабы в одном workspace

#### Минусы
- Может быть трудно понять как запускать проект
- Устаревшая IDE, которую сейчас редко используют

## MinGW-64 + CLion

Качаем MinGW-64 с [официального сайта](https://sourceforge.net/projects/mingw-w64/).  
Устанавливаем пакет в папку `C:\mingw-64`  
Качаем и ставим [CLion](https://www.jetbrains.com/clion/).  
Лицензионный ключ взять у преподавателя.  
Запускаете CLion и выбираете в качестве toolchain установленный mingw.

#### Плюсы
- работает без интернета
- готово для промышленной разработки
- полноценная IDE с автодополнением кода и подсказками
- полноценная отладка
- легковесный компилятор
- использует систему сборки cmake

#### Минусы
- CLion может тормозить на слабом компьютере
- На начальном этапе система сборки cmake может пугать и мешать.

## Дополнительно

С компилятором MinGW-64 можно использовать и другие текстовые редакторы, а не только VScode.

Обратите внимание на следующие:
- Geany
- Sublime Text 3
- CodeLite (есть дебаг, но тяжеловееесный)
- KDevelop