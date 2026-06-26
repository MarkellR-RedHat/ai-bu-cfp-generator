#!/bin/bash
# Install CFP Generator commands to Claude Code

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET_DIR="$HOME/.claude/commands"

echo "Installing CFP Generator commands..."

mkdir -p "$TARGET_DIR"

cp "$SCRIPT_DIR/commands/cfp.md" "$TARGET_DIR/cfp.md"
cp "$SCRIPT_DIR/commands/cfp-review.md" "$TARGET_DIR/cfp-review.md"
cp "$SCRIPT_DIR/commands/cfp-variants.md" "$TARGET_DIR/cfp-variants.md"

echo "Installed commands:"
echo "  /cfp          - Generate a complete CFP submission"
echo "  /cfp-review   - Review and get feedback on a draft CFP"
echo "  /cfp-variants - Generate 3 different angles for a topic"
echo ""
echo "Usage:"
echo "  /cfp building GPU-aware scheduling for Kubernetes workloads"
echo "  /cfp building GPU-aware scheduling for Kubernetes workloads, KubeCon"
echo "  /cfp-review [paste or path to your draft]"
echo "  /cfp-variants scaling inference workloads on OpenShift"
echo ""
echo "Done."
