#!/bin/bash
#
# CFP Generator Installer
# Copies slash command files to ~/.claude/commands/
# so they're available immediately in Claude Code.
#

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
COMMANDS_DIR="$SCRIPT_DIR/commands"
TARGET_DIR="$HOME/.claude/commands"

echo ""
echo "  CFP Generator for Claude Code"
echo "  =============================="
echo ""

# --- Preflight checks ---

if [ ! -d "$COMMANDS_DIR" ]; then
  echo "  [ERROR] commands/ directory not found at $COMMANDS_DIR"
  echo "  Make sure you're running this from the cfp-generator directory."
  echo ""
  exit 1
fi

COMMAND_COUNT=$(ls "$COMMANDS_DIR"/*.md 2>/dev/null | wc -l | tr -d ' ')

if [ "$COMMAND_COUNT" -eq 0 ]; then
  echo "  [ERROR] No .md command files found in $COMMANDS_DIR"
  echo ""
  exit 1
fi

echo "  Found $COMMAND_COUNT commands to install. Copying them over."
echo ""

# --- Create target directory ---

if [ ! -d "$TARGET_DIR" ]; then
  echo "  Creating $TARGET_DIR ..."
  mkdir -p "$TARGET_DIR"
else
  echo "  Target: $TARGET_DIR"
fi

echo ""

# --- Copy each command file ---

INSTALLED=0
for cmd_file in "$COMMANDS_DIR"/*.md; do
  filename=$(basename "$cmd_file")
  cmd_name="${filename%.md}"
  cp "$cmd_file" "$TARGET_DIR/$filename"
  echo "  [ok]  /$cmd_name"
  INSTALLED=$((INSTALLED + 1))
done

echo ""
echo "  Installed $INSTALLED commands. Here's what you got:"
echo ""

# --- Summary ---

echo "  Generate proposals:"
echo "    /cfp                Turn a rough topic into a submission-ready abstract"
echo "    /cfp-variants       Generate 3 different framings for the same talk"
echo "    /cfp-ab-test        Generate 2 competing abstracts and pick the winner"
echo "    /cfp-from-blog      Rebuild a blog post as a talk proposal"
echo "    /workshop-proposal  Generate a hands-on workshop with checkpoints"
echo "    /lightning-talk     Generate a 5-minute lightning talk"
echo ""
echo "  Review and refine:"
echo "    /cfp-review         Scored feedback with concrete rewrites"
echo "    /cfp-reviewer       Simulate a 3-person review committee"
echo ""
echo "  Repurpose:"
echo "    /talk-to-blog       Convert an accepted talk into a blog post outline"
echo ""
echo "  -------------------------------------------------------"
echo "  Try it now:"
echo ""
echo "    /cfp building GPU-aware scheduling for Kubernetes, KubeCon"
echo ""
echo "  Done. Go write that abstract."
echo ""
