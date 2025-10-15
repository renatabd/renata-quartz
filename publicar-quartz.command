#!/bin/bash
set -euo pipefail

# === CONFIGURAÇÃO ===
SOURCE="/Users/rbelizario/Internxt/Obsidian/Lab"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET="$SCRIPT_DIR/content"
SITE_URL="https://renatabd.github.io/renata-quartz"
ACTIONS_URL="https://github.com/renatabd/renata-quartz/actions"

echo "🔧 Publicar Quartz — início"
echo "📁 Obsidian: $SOURCE"
echo "📁 Repo Quartz: $SCRIPT_DIR"
echo

# 1️⃣ Limpa e recria content/
echo "🧹 Limpando pasta content/"
rm -rf "$TARGET"
mkdir -p "$TARGET"

# 2️⃣ Copia apenas notas que NÃO têm draft: true
echo "📄 Copiando notas (ignorando drafts)..."
find "$SOURCE" -type f -name "*.md" | while read -r file; do
  if ! grep -q "^draft:[[:space:]]*true" "$file"; then
    relpath="${file#$SOURCE/}"
    mkdir -p "$TARGET/$(dirname "$relpath")"
    cp "$file" "$TARGET/$relpath"
  else
    echo "🚫 Ignorado (draft): $file"
  fi
done

# 3️⃣ Construir site
echo
echo "🏗️  Construindo o site (npx quartz build)..."
cd "$SCRIPT_DIR"
npx quartz build

# 4️⃣ Commit + push
echo
echo "📤 Enviando ao GitHub..."
git add .
if git diff --cached --quiet && git diff --quiet; then
  COMMIT_MSG="deploy: rebuild automático (sem alterações) $(date '+%Y-%m-%d %H:%M')"
  git commit --allow-empty -m "$COMMIT_MSG"
else
  COMMIT_MSG="site: sync automático do Obsidian $(date '+%Y-%m-%d %H:%M')"
  git commit -m "$COMMIT_MSG"
fi
git push

# 5️⃣ Abre Actions e site
echo
echo "🚀 Deploy enviado! Abrindo no navegador..."
open "$ACTIONS_URL" >/dev/null 2>&1 || true
open "$SITE_URL/?v=$(date +%s)" >/dev/null 2>&1 || true

echo
echo "✅ Pronto! Em 1–2 min o site atualiza."
