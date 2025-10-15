#!/bin/bash
set -euo pipefail

# === CONFIGURAÇÃO (ajuste se um dia mudar os caminhos) ===
SOURCE="/Users/rbelizario/Internxt/Obsidian/Lab"   # suas notas do Obsidian
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET="$SCRIPT_DIR/content"                      # para onde copiar (dentro do repo)
SITE_URL="https://renatabd.github.io/renata-quartz"
ACTIONS_URL="https://github.com/renatabd/renata-quartz/actions"

echo "🔧 Publicar Quartz — início"
echo "📁 Obsidian: $SOURCE"
echo "📁 Repo Quartz: $SCRIPT_DIR"
echo

# 1) Copiar notas do Obsidian -> content/ (limpo e sincronizado)
echo "📄 Sincronizando notas..."
mkdir -p "$TARGET"
rsync -av --delete \
  --exclude ".obsidian" \
  --exclude ".DS_Store" \
  "$SOURCE"/ "$TARGET"/

# 2) Construir o site
echo
echo "🏗️  Construindo o site (npx quartz build)..."
cd "$SCRIPT_DIR"
npx quartz build

# 3) Commit + push (com commit vazio se não houver mudanças)
echo
echo "📤 Preparando envio ao GitHub..."
git add .
if git diff --cached --quiet && git diff --quiet; then
  # nada novo para commitar — ainda assim, fazemos um commit vazio para disparar o deploy
  COMMIT_MSG="deploy: rebuild automático (sem alterações) $(date '+%Y-%m-%d %H:%M')"
  echo "ℹ️  Sem alterações detectadas — criando commit vazio para deploy."
  git commit --allow-empty -m "$COMMIT_MSG"
else
  COMMIT_MSG="site: sync automático do Obsidian $(date '+%Y-%m-%d %H:%M')"
  git commit -m "$COMMIT_MSG"
fi

git push

# 4) Abrir o Actions e o site (sem cache) no navegador
echo
echo "🚀 Deploy enviado! Abrindo páginas úteis..."
open "$ACTIONS_URL" >/dev/null 2>&1 || true
# parâmetro v=timestamp ajuda a ignorar cache
open "$SITE_URL/?v=$(date +%s)" >/dev/null 2>&1 || true

echo
echo "✅ Pronto! Em ~1–2 min o site atualiza. Se quiser acompanhar, veja o Actions."
