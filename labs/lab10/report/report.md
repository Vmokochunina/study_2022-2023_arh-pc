---
## Front matter
title: "Отчет по лабораторной работе №10"
subtitle: "Понятие подпрограммы. Откладчик GDB"
author: "Мокочунина Влада Сергеевна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Приобретение навыков написания программ с использованием подпрограмм. Знакомство с методами отладки при помощи GDB и его основными возможностями.

# Задание

Приобрести навыки написания программ с использованием подпрограмм, познакомиться с методами отладки при помощи GDB и его основными возможностями.

# Выполнение лабораторной работы

1. Я создала каталог для лабораторной работы №10 и создала файл lab10-1.asm (рис. [-@fig:001])

![Создание файла](image/1.png){ #fig:001 width=70% }

2. Я ввела в него текст из листинга 1

![Ввод текста](image/2.png){ #fig:002 width=70% }

3. Я создала файл и проверила его работу

![Запуск программы](image/3.png){ #fig:003 width=70% }

4. Я изменила текст программы для вычисления заданного выражения

![Замена текста](image/4.png){ #fig:004 width=70% }

5. Я создала и запустила файл

![Запуск программы](image/5.png){ #fig:005 width=70% }

6. Я создала файл lab10-2.asm и ввела в него текст из листинга 2

![Ввод текста](image/6.png){ #fig:006 width=70% }

7. Я получила исполняемый файл, загрузила его в откладчик gdb и проверила работу программы, запустив ее в оболочке GDB

![Загрузка файла и проверка работы](image/7.png){ #fig:007 width=70% }

8. Я установила брейкпоинт на метку _start

![Установка брейкпоинта](image/8.png){ #fig:008 width=70% }

9. Я посмотрела дисассимилированный код программы

![Код программы](image/9.png){ #fig:009 width=70% }

10. Я переключилась на отображение команд с Intel’овским синтаксисом

![Другой синтаксис](image/10.png){ #fig:010 width=70% }

Различие только в отсутствии символов % и $

11. Я включила режим псевдографики

![Режим псевдографики](image/11.png){ #fig:011 width=70% }

12. Я проверила точку останова и установила свою

![Точка останова](image/12.png){ #fig:012 width=70% }

13. Я посмотрела регистры

![Просмотр регистров](image/13.png){ #fig:013 width=70% }

14. Я посмотрела значение переменной msg1

![Просмотр значения переменной](image/14.png){ #fig:014 width=70% }

15. Я посмотрела значение переменной msg2

![Просмотр значения переменной](image/15.png){ #fig:015 width=70% }

16. Я изменила первый символ переменной msg1

![Замена первого символа](image/16.png){ #fig:016 width=70% }

17. Я заменила символ переменной msg2

![Замена символа](image/17.png){ #fig:017 width=70% }

18. Я вывела значения регистров

![Значения регистров](image/18.png){ #fig:018 width=70% }

19. Я изменила значение регистра ebx

![Замена значения регистра](image/19.png){ #fig:019 width=70% }

Выводится два разных значения, так как в первом случае мы вносим двойку, а во втором сам регистр равен двум

20. Я завершила выполнение программы и вышла

![Выход](image/20.png){ #fig:020 width=70% }

21. Я скопировала файл из лабораторной №9 в лабораторную №10

![Копия файла](image/21.png){ #fig:021 width=70% }

22. Я создала файл и загрузила,указав аргументы

![Загрузка файла](image/22.png){ #fig:022 width=70% }

23. Я установила точку останова

![Точка останова](image/23.png){ #fig:023 width=70% }

24. Я посмотрела адрес вершины стека

![Адрес вершины стека](image/24.png){ #fig:024 width=70% }

25. Я посмотрела остальные позиции стека

![Позиции стека](image/25.png){ #fig:025 width=70% }

Интервал между элементами 4, так как в стеке хранится только до 4 байт

# Самостоятельная работа

1. Я преобразовала программу из лабораторной работы No9, реализовав вычисление значения функции 𝑓(𝑥) как подпрограмму.

![Преобразование программы](image/26.png){ #fig:026 width=70% }

2. Я создала и запустила файл

![Запуск файла](image/27.png){ #fig:027 width=70% }

3. Я создала файл и ввела из него программу из листинга 3

![Ввод текста](image/28.png){ #fig:028 width=70% }

4. Я запустила файл и увидела.что выдает ошибку

![Запуск файла](image/29.png){ #fig:029 width=70% }

5. Я запустила файл с помощью откладчика gdb

![Запуск файла](image/30.png){ #fig:030 width=70% }

![Запуск файла](image/31.png){ #fig:031 width=70% }

6. Я посмотрела,что регистры стоят не на своих местах и изменила это

![Исправление ошибок](image/32.png){ #fig:032 width=70% }

7. Я проверила работу программы

![Запуск файла](image/33.png){ #fig:033 width=70% }

#Вывод

Я приобрела навыки написания программ с использованием подпрограмм, познакомилась с методами отладки при помощи GDB и его основными возможностями.

::: {#refs}
:::
