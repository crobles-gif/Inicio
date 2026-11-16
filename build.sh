#!/usr/bin/env bash
# Genera index.html (documento completo para GitHub Pages) a partir de src/hecom.html
set -euo pipefail
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="es">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  awk '/^<\/style>/{print; exit} {print}' src/hecom.html
  printf '</head>\n<body>\n'
  awk 'f{print} /^<\/style>/{f=1}' src/hecom.html
  printf '</body>\n</html>\n'
} > index.html
echo "index.html generado"
