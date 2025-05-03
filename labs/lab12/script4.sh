#!/bin/bash

# Первый аргумент - путь к директории
DIR_PATH="$1"

# Второй аргумент - искомое расширение файла (уже с точкой)
FILE_EXTENSION="$2"

# Проверка наличия обязательных аргументов
if [ -z "$DIR_PATH" ]; then
    echo "Ошибка: Укажите путь к директории." >&2
    exit 1
fi

if [ -z "$FILE_EXTENSION" ]; then
    echo "Ошибка: Укажите формат файла." >&2
    exit 1
fi

# Перечисляем файлы с данным расширением и считаем их количество
FILES_COUNT=$(find "$DIR_PATH" -type f -name "*$FILE_EXTENSION" | wc -l)

# Выводим результат
echo "Количество файлов с расширением $FILE_EXTENSION в директории $DIR_PATH: $FILES_COUNT"
