#!/bin/bash
# install.sh — Symlink /six-pager into ~/.claude/skills/ so Claude Code can find it.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILL_DIR="$REPO_DIR/six-pager"

if [ ! -f "$SKILL_DIR/SKILL.md" ]; then
  echo "error: $SKILL_DIR/SKILL.md not found" >&2
  exit 1
fi

mkdir -p ~/.claude/skills

# Use -n to avoid descending into an existing symlink to a directory (macOS ln follows by default)
ln -sfn "$SKILL_DIR" ~/.claude/skills/six-pager

echo "Installed /six-pager → ~/.claude/skills/six-pager"
echo "Restart Claude Code (or start a new session) and invoke with /six-pager"
