#!/bin/bash

# Определяем переменные по умолчанию
input_file=""
output_file=""
pattern=""
case_sensitive=0 # По умолчанию игнорируем регистр
line_numbers=0   # По умолчанию не выводим номера строк
# Обработка ключей командной строки
while getopts ":i:o:p:Cn" opt; do
  case ${opt} in
    i ) input_file=$OPTARG ;;
    o ) output_file=$OPTARG ;;
    p ) pattern=$OPTARG ;;
    C ) case_sensitive=1 ;;
    n ) line_numbers=1 ;;
    \?) echo "Invalid option: -$OPTARG"; exit 1;;
    : ) echo "Option -$OPTARG requires an argument."; exit 1;;
  esac
done
# Проверка наличия обязательных параметров
if [[ -z "$input_file" || -z "$pattern" ]]; then
  echo "Usage: script.sh -i file_to_read -p search_pattern [-o output_file] [-C] [-n]"
  exit 1
fi
# Собираем параметры для grep
grep_options="-E"
[[ $case_sensitive -eq 1 ]] && grep_options="-F"
[[ $line_numbers -eq 1 ]] && grep_options+=" -n"
# Выполняем поиск
if [[ -n "$output_file" ]]; then
  grep $grep_options "$pattern" "$input_file" > "$output_file"
else
  grep $grep_options "$pattern" "$input_file"
fi
