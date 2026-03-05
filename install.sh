#!/bin/bash

# GTM Audit Tool - One-Command Installer
# Installs all GTM audit skills into your Claude Code environment

set -e

SKILLS_DIR=".claude/skills"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SOURCE_DIR="$SCRIPT_DIR/skills"

echo ""
echo "=================================="
echo "  GTM Audit Tool - Installer"
echo "=================================="
echo ""

# Create .claude/skills directory if it doesn't exist
mkdir -p "$SKILLS_DIR"

# List of skills to install
SKILLS=(
  "gtm-audit"
  "gtm-icp"
  "gtm-messaging"
  "gtm-channels"
  "gtm-content"
  "gtm-signals"
  "gtm-report-pdf"
)

# Copy each skill
for skill in "${SKILLS[@]}"; do
  mkdir -p "$SKILLS_DIR/$skill"
  cp "$SOURCE_DIR/$skill/skill.md" "$SKILLS_DIR/$skill/skill.md"
  echo "  Installed: $skill"
done

# Create outputs directory
mkdir -p outputs

echo ""
echo "=================================="
echo "  Installation Complete!"
echo "=================================="
echo ""
echo "Available commands:"
echo ""
echo "  /gtm-audit <url>      Full GTM audit (5 parallel agents)"
echo "  /gtm-icp <url>        ICP clarity analysis"
echo "  /gtm-messaging <url>  Messaging & positioning analysis"
echo "  /gtm-channels <url>   Channel mix audit"
echo "  /gtm-content <url>    Content-market fit analysis"
echo "  /gtm-signals <url>    Signal detection"
echo "  /gtm-report-pdf       Generate PDF from last audit"
echo ""
echo "Usage: Open Claude Code and type any command above."
echo "Example: /gtm-audit https://example.com"
echo ""
