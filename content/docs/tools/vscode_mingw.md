# Настройка MinGW + VScode

1. Качаем MinGW с [официального сайта](https://sourceforge.net/projects/mingw-w64/).
2. Устанавливаем пакет в папку `C:\mingw-w64`. Следите, чтобы не было пробелов и русских символов в именах папок!!
3. Добавялем `C:\mingw-w64\mingw64\bin` в переменные окружения PATH.
3. Устанавливаем с официального сайта [VScode](https://code.visualstudio.com/).
4. В vscode ставим расширение [C/C++ tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools). Перезапускаем редактор.
5. Нажимаем `Файл > Открыть директорию`. Открываем директорию, где будут лежать все лабораторные работы по предмету.
6. Создаем папку `.vscode` и складываем туда три файла `launch.json`, `settings.json`, `tasks.json`.
7. Создаем файл `test.c` с кодом 

```c
#include <stdio.h>

int main(void) {
  printf("Hello world\n");
  return 0;
}
```

8. Нажимаем комбинацию клавиш `ctrl-shift-B` и видим в консоли `Hello world`.
9. Поставьте брейк-поинт на строке `return 0`. Нажмите `F5` - у вас запустится дебаг.

## Конфиг файлы

### settings.json

Это настройки, чтобы было правильное автоматическое форматирование кода.

```json
{
    "terminal.integrated.shell.windows": "C:\\Windows\\System32\\cmd.exe",
    "editor.formatOnSave": true,
    "C_Cpp.clang_format_style": "Google"
}
```

### tasks.json

Это настройки для запуска приложения

```json
{
    // See https://go.microsoft.com/fwlink/?LinkId=733558
    // for the documentation about the tasks.json format
    "version": "2.0.0",
    "tasks": [
        {
            "label": "Run",
            "type": "shell",
            "command": "a.exe",
            "group": {
                "isDefault": true,
                "kind": "build"
            },
            "dependsOn": [
                "Build"
            ]
        },
        {
            "label": "Build",
            "type": "shell",
            "command": "gcc -Wall -g ${file} -o a.exe",
            "problemMatcher": [
                "$gcc"
            ]
        }
    ]
}
```

### launch.json

Это настройки, чтобы работал Debug.

```json
{
    // Используйте IntelliSense, чтобы узнать о возможных атрибутах.
    // Наведите указатель мыши, чтобы просмотреть описания существующих атрибутов.
    // Для получения дополнительной информации посетите: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "name": "(gdb) Launch",
            "type": "cppdbg",
            "request": "launch",
            "program": "${workspaceFolder}/a.exe",
            "args": [],
            "stopAtEntry": false,
            "cwd": "${workspaceFolder}",
            "environment": [],
            "externalConsole": true,
            "MIMode": "gdb",
            "miDebuggerPath": "C:\\mingw-w64\\mingw64\\bin\\gdb.exe",
            "setupCommands": [
                {
                    "description": "Enable pretty-printing for gdb",
                    "text": "-enable-pretty-printing",
                    "ignoreFailures": true
                }
            ],
            "preLaunchTask": "Build"
        }
    ]
}
```
