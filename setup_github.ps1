# Script para conectar e enviar o código para o GitHub
# Repositório: https://github.com/JoaoBrunoLuz/fonodracamila.git

Write-Host "Iniciando configuração do GitHub..." -ForegroundColor Cyan

# Adicionar remote se não existir
if (!(git remote | Select-String "origin")) {
    git remote add origin https://github.com/JoaoBrunoLuz/fonodracamila.git
    Write-Host "Remote 'origin' adicionado." -ForegroundColor Green
} else {
    Write-Host "Remote 'origin' já configurado." -ForegroundColor Yellow
}

# Garantir que estamos na branch main
git branch -M main

# Enviar para o GitHub
Write-Host "Enviando commits para o GitHub..." -ForegroundColor Cyan
git push -u origin main

Write-Host "Concluído! Seu projeto está no ar." -ForegroundColor Green
