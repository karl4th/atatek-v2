#!/bin/bash

# Скрипт для настройки аутентификации Docker с GitHub Container Registry
# Замените YOUR_GITHUB_USERNAME и YOUR_PERSONAL_ACCESS_TOKEN на ваши данные

echo "Настройка аутентификации Docker с GitHub Container Registry..."

# Войдите в Docker с GitHub credentials
echo $YOUR_PERSONAL_ACCESS_TOKEN | docker login ghcr.io -u YOUR_GITHUB_USERNAME --password-stdin

# Проверьте аутентификацию
echo "Проверка аутентификации..."
docker pull ghcr.io/karl4th/atatek-backend:latest
docker pull ghcr.io/karl4th/atatek-frontend:latest

echo "Аутентификация настроена успешно!" 