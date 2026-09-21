#!/bin/bash

if [ -z "$1" ]; then
    echo "Ошибка: Укажите имя проекта."
    echo "Использование: $0 <имя_проекта>"
    exit 1
fi

PROJECT_NAME="$1"

echo "Создание проекта: $PROJECT_NAME..."
mkdir -p "$PROJECT_NAME/css"
mkdir -p "$PROJECT_NAME/js"

cat <<EOF > "$PROJECT_NAME/index.html"
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$PROJECT_NAME</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h1>Проект $PROJECT_NAME успешно создан!</h1>
    <script src="js/script.js"></script>
</body>
</html>
EOF

cat <<EOF > "$PROJECT_NAME/css/style.css"
/* Стили для проекта $PROJECT_NAME */
body {
    font-family: Arial, sans-serif;
    margin: 40px;
    background-color: #f4f4f4;
}
EOF

# Создаем пустой script.js
cat <<EOF > "$PROJECT_NAME/js/script.js"
// Скрипты для проекта $PROJECT_NAME
console.log("Проект '$PROJECT_NAME' инициализирован.");
EOF

echo "Успешно! Структура проекта '$PROJECT_NAME' создана."