#!/usr/bin/env bash
# Copia las skills de este repo a ~/.claude/skills (no sobrescribe las existentes salvo con --force)
set -euo pipefail
SRC="$(cd "$(dirname "$0")" && pwd)/skills"
DEST="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
FORCE=0; [ "${1:-}" = "--force" ] && FORCE=1
mkdir -p "$DEST"
n=0; s=0
for dir in "$SRC"/*/; do
  name="$(basename "$dir")"
  if [ -e "$DEST/$name" ] && [ $FORCE -eq 0 ]; then echo "omitida (ya existe): $name"; s=$((s+1)); continue; fi
  cp -R "$dir" "$DEST/"
  n=$((n+1))
done
echo "Instaladas: $n  Omitidas: $s  ->  $DEST"
