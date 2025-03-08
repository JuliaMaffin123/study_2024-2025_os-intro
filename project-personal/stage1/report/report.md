---
## Front matter
title: "Индивидуальный проект"
subtitle: "Этап №1"
author: "Полякова Юлия Александровна"

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
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
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

Размещение на Github pages заготовки для персонального сайта.

# Выполнение лабораторной работы

1. В домашней папке создаем пустой каталог bin. Устанавливаем последнюю версию hugo с github. Распаковываем архив и переносим загрузочный файл в папку bin. Создаем репозиторий на основе нужного шаблона и клонируем его себе в папку (рис. [-@fig:001]).

![Создание репозитория blog](image/1.jpg){#fig:001 width=70%}

2. Устанавливаем hugo через sudo (рис. [-@fig:002])

![Устанавливаем hugo](image/2.jpg){#fig:002 width=70%}

3. Создаем загрузочным файлом в ~/bin/blog сайт (рис. [-@fig:003])

![Создание сайта](image/3.jpg){#fig:003 width=70%}

4. Удаляем папку public (рис. [-@fig:004])

![Удаление public](image/4.jpg){#fig:004 width=70%}

5. Запускаем локальный сайт (рис. [-@fig:005])

![Локальный сайт](image/5.jpg){#fig:005 width=70%}

6. Создаем пустой репозиторий в формате имя-на-github.github.io, клонируем его себе, проверяем ветку main, создаем README файл, добавляем все на сервер (рис. [-@fig:006])

![Создание репозитория JuliaMaffin123.github.io](image/6.jpg){#fig:006 width=70%}

7. В ~/bin/blog С помощью submodule добавляем новый репозиторий в папку public (рис. [-@fig:007])

![submodule в public](image/7.jpg){#fig:007 width=70%}

8. Создаем сайт загрузочным файлом (рис. [-@fig:008])

![Создание публичной страницы](image/8.jpg){#fig:008 width=70%}

9. Переходим в public и добавляем все файлы на сервер (рис. [-@fig:009])

![Отправление файлов на сервер](image/9.jpg){#fig:009 width=70%}

10. В репозитории имя.github.io в github-pages можно найти ссылку на страницу (рис. [-@fig:010])

![Страница по адресу работает](image/10.jpg){#fig:010 width=70%}

# Вывод

Была размещена на Github pages заготовка для персонального сайта.

