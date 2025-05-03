#!/bin/bash

# Переменные
BACKUP_DIR="~/backup"
SCRIPT_NAME="${0##*/}"
ARCHIVE_NAME="$SCRIPT_NAME.zip"

# Создать директорию backup, если её ещё нет
mkdir -p "$BACKUP_DIR"

# Выполнить архивирование с помощью zip
zip -j "$BACKUP_DIR/$ARCHIVE_NAME" "$0"

# Сообщение об успешности
echo "Резервная копия успешно создана в '$BACKUP_DIR'."

exit 0
