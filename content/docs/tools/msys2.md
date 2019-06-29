# Msys2

1. Скачайте установщик MSYS2:
	- [для 64 битной Windows](http://repo.msys2.org/distrib/msys2-x86_64-latest.exe)
	- [для 32 битной Windows](http://repo.msys2.org/distrib/msys2-i686-latest.exe)
2. Запустите установщик, нажмите Next
![](http://www.msys2.org/1_msys32-start.png)
3. Установите MSYS2 в папку `C:\msys64` или `C:\msys32`. Обратите внимание, не должно быть никаких русских символов или пробелов!
4. Установите флажок "Run MSYS2 now" и нажмите Finish
![](http://www.msys2.org/5_msys2-finish_install.png)
5. Откроется терминал. Введите команду `pacman -Syu`, чтобы обновить системные пакеты.
![](http://www.msys2.org/6_msys2-update-system.png)
6. Если потребуется, закройте терминал, откройте MSYS2 терминал снова и выполните команду `pacman -Su`.
7. Теперь MSYS2 и пакетный менеджер Pacaman готовы к работе. В случае проблем читайте [официальный туториал](https://github.com/msys2/msys2/wiki/MSYS2-installation).
8. Установите компиляторы, сборщики и необходимые библиотеки выполнив команду `pacman -S mingw-w64-x86_64-cmake mingw-w64-x86_64-gcc mingw-w64-x86_64-pkg-config mingw-w64-x86_64-SDL2 mingw-w64-x86_64-SDL2_mixer mingw-w64-x86_64-make mingw-w64-x86_64-gdb`.
