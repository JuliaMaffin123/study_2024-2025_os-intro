---
## Front matter
title: "Лабораторная работа №4"
subtitle: "Продвинутое использование git"
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

Получение навыков правильной работы с репозиториями git

# Задание

 * Выполнить работу для тестового репозитория.
 * Преобразовать рабочий репозиторий в репозиторий с git-flow и conventional commits.

# Выполнение лабораторной работы

1. Установка git-flow командами dnf copr enable elegos/gitflow и dnf install gitflow под суперпользователем (рис. [-@fig:001]).

![Установка git-flow](image/1.jpg){#fig:001 width=70%}

2. Установка Node.js (dnf install nodejs) и pnpm (рис. [-@fig:002])

![Установка Node.js](image/2.jpg){#fig:002 width=70%}

3. Настройка Node.js. Для работы с Node.js добавим каталог с исполняемыми файлами, устанавливаемыми yarn, в переменную PATH. (рис. [-@fig:003])

![Настройка Node.js](image/3.jpg){#fig:003 width=70%}

4. Устанавливаем программу для создания общепринятых коммитов (рис. [-@fig:004])

![Общепринятые коммиты](image/4.jpg){#fig:004 width=70%}

5. Создаем репозиторий с именем git-extended на GitHub, клонируем его в папку с таким же именем, переходим в эту папку (рис. [-@fig:005])

![Создание репозитория git](image/5.jpg){#fig:005 width=70%}

6. Делаем первый коммит и выкладывем на github (рис. [-@fig:006])

![Первый коммит, загрузка файлов](image/6.jpg){#fig:006 width=70%}

7. Задаем конфигурацию для пакетов Node.js (рис. [-@fig:007])

![Задаем конфигурацию](image/7.jpg){#fig:007 width=70%}

8. Добавим в файл package.json команду для формирования коммитов (рис. [-@fig:008])

![Меняем package.json](image/8.jpg){#fig:008 width=70%}

9. Добавим новые файлы на сервер (рис. [-@fig:009])

![Отправление файлов на сервер](image/9.jpg){#fig:009 width=70%}

10. Инициализируем git-flow, проверяем, что мы на ветке develop, загружаем весь репозиторий на git (рис. [-@fig:010])

![Конфигурация git-flow 1-ая ч.](image/10.jpg){#fig:010 width=70%}

11. Устанавливаем внешнюю ветку как вышестоящую, создаем релиз с версией 1.0.0 (рис. [-@fig:011])

![Конфигурация git-flow 2-ая ч.](image/11.jpg){#fig:011 width=70%}

12. Создаем журнал изменений, добавим его в индекс (рис. [-@fig:012])

![Конфигурация git-flow 3-я ч.](image/12.jpg){#fig:012 width=70%}

13. Зальём релизную ветку в основую (рис. [-@fig:013])

![Конфигурация git-flow 4-ая ч.](image/13.jpg){#fig:013 width=70%}

14. Отправляем данные о репозитории и ярлыках на github. Создаем релиз с помощью gh (рис. [-@fig:014])

![Конфигурация git-flow 5-ая ч.](image/14.jpg){#fig:014 width=70%}

15. При разработке новой функциональности мы создаем ветку, работаем с git, а затем объединяем ветку feature_branch c develop (рис. [-@fig:015])

![Разработка новой функциональности](image/15.jpg){#fig:015 width=70%}

16. Создаем релиз с версией 1.2.3, обновляем номер версии в файле package.json, создаем журнал изменений (рис. [-@fig:016])

![Создание релиза git-flow 1-ая ч.](image/16.jpg){#fig:016 width=70%}

17. Добавим журнал изменений в индекс (рис. [-@fig:017])

![Создание релиза git-flow 2-ая ч.](image/17.jpg){#fig:017 width=70%}

18. Зальём релизную ветку в основную ветку (рис. [-@fig:018])

![Создание релиза git-flow 3-я ч.](image/18.jpg){#fig:018 width=70%}

19. Отправим данные на github и создадим релиз на github с комментарием из журнала изменений (рис. [-@fig:019])

![Создание релиза git-flow 4-ая ч.](image/19.jpg){#fig:019 width=70%}

# Вывод

Были получены навыки правильной работы с репозиториями git

