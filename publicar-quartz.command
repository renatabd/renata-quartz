#!/bin/bash
set -euo pipefail
OBSIDIAN="/Users/rbelizario/Internxt/Obsidian/Lab"
REPO="/Users/rbelizario/Documents/Sites/quartz"
echo "🔧 Publicar Quartz — início"
echo "📁 Obsidian: $OBSIDIAN"
echo "📁 Repo Quartz: $REPO"
cd "$REPO"
rm -rf content
mkdir -p content
find "$OBSIDIAN" -type f -name "*.md" | while read -r file; do
  if ! grep -q "^draft:[[:space:]]*true" "$file"; then
    rel="${file#$OBSIDIAN/}"
    mkdir -p "content/$(dirname "$rel")"
    cp "$file" "content/$rel"
  else
    echo "🚫 Ignorado (draft): $file"
  fi
done
if [ ! -f content/index.md ]; then
  printf '%s\n' '---' 'title: Renata’s Laboratory' '---' '' '# Bem-vinda(o)' > content/index.md
fi
printf '%s\n' '@use "./base.scss";' '@use "./themes";' > quartz/styles/custom.scss
if [ ! -d "quartz/styles/themes" ]; then
  echo "🎨 Instalando tema Zen (local)..."
  curl -fsSL https://raw.githubusercontent.com/saberzero1/quartz-themes/master/action.sh | bash -s -- Zen
fi
echo "🏗️  Construindo o site (npx quartz build)..."
npx quartz build
echo "⬆️  Commit + push..."
git add .
git commit -m "publish: sync obsidian + build (zen theme)" || true
git push
open "https://github.com/renatabd/renata-quartz/actions" >/dev/null 2>&1 || true
open "https://renatabd.github.io/renata-quartz/?v=$(date +%s)" >/dev/null 2>&1 || true
echo "✅ Pronto!"
