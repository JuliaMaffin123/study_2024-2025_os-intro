#!/bin/bash

# Проверка наличия аргументов
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Использование: $0 {--create|--remove} N"
    exit 1
fi

MODE=$1      # Режим работы (создание или удаление)
NUM_FILES=$2 # Количество файлов

# Функция проверки существования файлов
check_existing_files() {
    for ((i = 1; i <= NUM_FILES; i++)); do
        FILENAME="${i}.tmp"
        if [ -f "$FILENAME" ]; then
            return 0  # Существует хотя бы один файл
        fi
    done
    return 1          # Все файлы отсутствуют
}

# Основная логика
if [ "$MODE" = "--create" ]; then
    # Проверяем, существуют ли уже файлы
    if check_existing_files; then
        echo "Ошибка: Некоторые файлы уже существуют. Остановлено создание."
        exit 1
    fi

    # Цикл создания файлов
    for ((i = 1; i <= NUM_FILES; i++)); do
        touch "${i}.tmp"
        echo "Создан файл ${i}.tmp"
    done
elif [ "$MODE" = "--remove" ]; then
    # Цикл удаления файлов
    for ((i = 1; i <= NUM_FILES; i++)); do
        FILENAME="${i}.tmp"
        if [ -f "$FILENAME" ]; then
            rm "$FILENAME"
            echo "Файл $FILENAME удалён."
        else
            echo "Файл $FILENAME не существует."
        fi
    done
else
    echo "Неверный режим работы. Используйте '--create' или '--remove'"
    exit 1
fi
