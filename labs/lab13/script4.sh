#!/bin/bash

SOURCE_DIRECTORY=""       # Исходный каталог
OUTPUT_DIRECTORY=""       # Целевой каталог
ARCHIVE_PREFIX="_recently_modified"  # Префикс названия архива
ARCHIVE_EXTENSION=".tar.gz"           # Расширение архива

# Разбор аргументов командной строки
while getopts s:o:h FLAG; do
    case $FLAG in
        s) SOURCE_DIRECTORY=$OPTARG ;;
        o) OUTPUT_DIRECTORY=$OPTARG ;;
        h) echo "Использование: $0 -s source_dir -o output_dir"; exit 0 ;;
        *) echo "Неправильный флаг. Попробуйте '-h' для справки."; exit 1 ;;
    esac
done

# Проверка наличия обязательных параметров
if [ -z "$SOURCE_DIRECTORY" ] || [ -z "$OUTPUT_DIRECTORY" ]; then
    echo "Необходимо задать источник и целевой каталоги."
    exit 1
fi

# Извлекаем базовое имя каталога (без пути)
BASE_DIRNAME=$(basename "$SOURCE_DIRECTORY")

# Формируем полное имя архива с именем каталога
ARCHIVE_NAME="${BASE_DIRNAME}${ARCHIVE_PREFIX}${ARCHIVE_EXTENSION}"

# Переход в рабочий каталог
cd "$SOURCE_DIRECTORY" || exit 1

# Поиск файлов, изменённых менее недели назад
FILES_TO_ARCHIVE=$(find . -type f -mtime -7)

# Проверка наличия свежих файлов
if [ -z "$FILES_TO_ARCHIVE" ]; then
    echo "Нет файлов, изменённых менее недели назад."
    exit 0
fi

# Создание архива
tar czvf "$OUTPUT_DIRECTORY/$ARCHIVE_NAME" $FILES_TO_ARCHIVE

echo "Архив успешно создан: $OUTPUT_DIRECTORY/$ARCHIVE_NAME"
