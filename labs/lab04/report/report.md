---
## Front matter
title: "Отчет по лабораторной работе №4"
subtitle: "Язык разметки Markdown"
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
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью работы является освоение процедуры оформления отчетов с помощью
легковесного языка разметки Markdown.

# Задание

Научиться оформлять отчет в Markdown.

# Теоретическое введение

Для создания заголовка, используйте знак #.
Чтобы задать для текста полужирное начертание, заключите его в двойные
звездочки.
Чтобы задать для текста курсивное начертание, заключите его в одинарные
звездочки.
Чтобы задать для текста полужирное и курсивное начертание, заключите его
в тройные звездочки.
Блоки цитирования создаются с помощью символа >.
Упорядоченный список можно отформатировать с помощью соответствую-
щих цифр.
Чтобы вложить один список в другой, добавьте отступ для элементов дочер-
него списка.
Неупорядоченный список можно отформатировать с помо-
щью звездочек или тире.
Чтобы вложить один список в другой, добавьте отступ для элементов дочер-
него списка.
Синтаксис Markdown для встроенной ссылки состоит из части,
представляющей текст гиперссылки, и части– URL-адреса или
имени файла,поддерживает как встраивание фрагментов кода в предложение,так и их размещение между предложениями в виде отдельных огражденных
блоков.
В Markdown вставить изображение в документ можно с помощью непосред-
ственного указания адреса изображения.

# Выполнение лабораторной работы
1. Я перешла в каталог курса и обновила локальный репозиторий (рис. [-@fig:001]) .

![Каталог курса. Обновление локального репозитория](image/94130.jpg){ #fig:001 width=70% }

2. Я перешла в каталог с шаблоном отчета по лабораторной работе 4.

![Каталог с шаблоном.](image/4417.jpg){ #fig:002 width=70% }

3. Я провела компиляцию шаблона с использованием Makefile.

![Компиляция шаблона.](image/70205.jpg){ #fig:003 width=70% }

4. Я открыла и проверила корректность полученных файлов.

![Pdf файл.](image/60.jpg){ #fig:004 width=70% }

![Docx файл.](image/31286.jpg){ #fig:005 width=70% }

![Файл md.](image/75447.jpg){ #fig:006 width=70% }

5. Я удалила полученные файлы с использованием Makefile.

![Удаление файлов.](image/164811.jpg){ #fig:007 width=70% }

6. Я внимательно изучила структуру файла и написала собственный отчет.

![Изучение структуры файла.](image/84909.jpg){ #fig:008 width=70% }

# Самостоятельная работа

1. Я оформила отчет по лабораторной работе №3 в md и провела его компиляцию в  docx и pdf.

![Лабораторная работа №3.](image/1787.jpg){ #fig:009 width=70% }

2. Я отправила файлы на github.

![Отправка файлов.](image/1234.jpg){ #fig:010 width=70% }

# Выводы

Я освоила процедуры оформления отчетов с помощью
легковесного языка разметки Markdown.

::: {#refs}
:::
