#!/bin/bash

# Название команды передается первым аргументом
COMMAND_NAME="$1"

# Формат полного пути к архивному файлу помощи
MANUAL_PATH="/usr/share/man/man1/${COMMAND_NAME}.1.gz"

# Проверяем существование файла помощи
if [[ -f "$MANUAL_PATH" ]]; then
    # Распаковка и просмотр справки
    zcat "$MANUAL_PATH" | less
else
    # Сообщение об отсутствии документа
    echo "Справочная информация для '$COMMAND_NAME' не найдена."
fi
