#!/bin/bash
# Install CFP Generator commands to Claude Code

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET_DIR="$HOME/.claude/commands"

echo "Installing CFP Generator commands..."

mkdir -p "$TARGET_DIR"

cp "$SCRIPT_DIR/commands/cfp.md" "$TARGET_DIR/cfp.md"
cp "$SCRIPT_DIR/commands/cfp-review.md" "$TARGET_DIR/cfp-review.md"
cp "$SCRIPT_DIR/commands/cfp-reviewer.md" "$TARGET_DIR/cfp-reviewer.md"
cp "$SCRIPT_DIR/commands/cfp-variants.md" "$TARGET_DIR/cfp-variants.md"
cp "$SCRIPT_DIR/commands/cfp-ab-test.md" "$TARGET_DIR/cfp-ab-test.md"
cp "$SCRIPT_DIR/commands/cfp-from-blog.md" "$TARGET_DIR/cfp-from-blog.md"
cp "$SCRIPT_DIR/commands/workshop-proposal.md" "$TARGET_DIR/workshop-proposal.md"
cp "$SCRIPT_DIR/commands/lightning-talk.md" "$TARGET_DIR/lightning-talk.md"
cp "$SCRIPT_DIR/commands/talk-to-blog.md" "$TARGET_DIR/talk-to-blog.md"

echo ""
echo "Installed 9 commands:"
echo ""
echo "  Generate proposals:"
echo "    /cfp               - Generate a complete CFP submission"
echo "    /cfp-variants      - Generate 3 different angles for a topic"
echo "    /cfp-ab-test       - Generate 2 competing abstracts and analyze which is stronger"
echo "    /cfp-from-blog     - Turn a blog post into a talk proposal"
echo "    /workshop-proposal - Generate a hands-on workshop submission"
echo "    /lightning-talk    - Generate a 5-minute lightning talk proposal"
echo ""
echo "  Review and refine:"
echo "    /cfp-review        - Get scored feedback on a draft CFP"
echo "    /cfp-reviewer      - Simulate a 3-person review committee scoring your submission"
echo ""
echo "  Repurpose:"
echo "    /talk-to-blog      - Convert an accepted talk into a companion blog post outline"
echo ""
echo "Usage examples:"
echo "  /cfp building GPU-aware scheduling for Kubernetes workloads, KubeCon"
echo "  /cfp-reviewer [paste your abstract here]"
echo "  /cfp-ab-test scaling inference workloads on OpenShift"
echo "  /cfp-from-blog [paste or URL of your blog post]"
echo "  /talk-to-blog [paste your accepted talk proposal]"
echo ""
echo "Done. Commands are available as slash commands in Claude Code."
