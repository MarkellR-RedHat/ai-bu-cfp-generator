#!/bin/bash
# Install CFP Generator commands to Claude Code
# Copies slash command files to ~/.claude/commands/

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
COMMANDS_DIR="$SCRIPT_DIR/commands"
TARGET_DIR="$HOME/.claude/commands"

# Check that the commands directory exists
if [ ! -d "$COMMANDS_DIR" ]; then
  echo "Error: commands/ directory not found at $COMMANDS_DIR"
  exit 1
fi

# Count available commands
COMMAND_COUNT=$(ls "$COMMANDS_DIR"/*.md 2>/dev/null | wc -l | tr -d ' ')

if [ "$COMMAND_COUNT" -eq 0 ]; then
  echo "Error: no .md command files found in $COMMANDS_DIR"
  exit 1
fi

echo ""
echo "CFP Generator"
echo "============="
echo ""
echo "Installing $COMMAND_COUNT slash commands for Claude Code..."
echo ""

mkdir -p "$TARGET_DIR"

# Copy all command files
INSTALLED=0
for cmd_file in "$COMMANDS_DIR"/*.md; do
  filename=$(basename "$cmd_file")
  cp "$cmd_file" "$TARGET_DIR/$filename"
  INSTALLED=$((INSTALLED + 1))
done

echo "Installed $INSTALLED commands to $TARGET_DIR"
echo ""
echo "  Generate proposals:"
echo "    /cfp               - Turn a rough topic into a submission-ready abstract"
echo "    /cfp-variants      - Generate 3 different framings for the same talk"
echo "    /cfp-ab-test       - Generate 2 competing abstracts and pick the stronger one"
echo "    /cfp-from-blog     - Rebuild a blog post as a talk proposal"
echo "    /workshop-proposal - Generate a hands-on workshop with checkpoints"
echo "    /lightning-talk    - Generate a 5-minute lightning talk"
echo ""
echo "  Review and refine:"
echo "    /cfp-review        - Scored feedback with concrete rewrites"
echo "    /cfp-reviewer      - Simulate a 3-person review committee"
echo ""
echo "  Repurpose:"
echo "    /talk-to-blog      - Convert an accepted talk into a blog post outline"
echo ""
echo "Quick start:"
echo "  /cfp building GPU-aware scheduling for Kubernetes, KubeCon"
echo "  /cfp-reviewer [paste your abstract]"
echo ""
echo "Done. Commands are available as slash commands in Claude Code."
