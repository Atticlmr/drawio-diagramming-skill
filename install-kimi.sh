#!/bin/bash
# Kimi-CLI Skill Auto-Installer for drawio-diagramming
# This script installs the drawio-diagramming skill to Kimi CLI

set -e

SKILL_NAME="drawio-diagramming"
SOURCE_DIR="$(cd "$(dirname "$0")" && pwd)/kimi-compatible"
KIMI_TARGET="$HOME/.kimi/skills/$SKILL_NAME"
AGENTS_TARGET="$HOME/.config/agents/skills/$SKILL_NAME"
AGENTS_OLD_TARGET="$HOME/.agents/skills/$SKILL_NAME"

echo "=========================================="
echo "Kimi-CLI Skill Installer"
echo "Skill: $SKILL_NAME"
echo "=========================================="
echo ""

# Check if source directory exists
if [ ! -f "$SOURCE_DIR/SKILL.md" ]; then
    echo "Error: SKILL.md not found in $SOURCE_DIR"
    exit 1
fi

# Check if SKILL.md has correct frontmatter format
echo "Checking SKILL.md format..."
if ! head -1 "$SOURCE_DIR/SKILL.md" | grep -q "^---$"; then
    echo "Warning: SKILL.md may not have frontmatter at the beginning"
    echo "Expected format:"
    echo "---"
    echo "name: skill-name"
    echo "description: ..."
    echo "---"
fi

# Determine best installation path
if [ -d "$HOME/.kimi" ] || [ ! -d "$HOME/.config/agents" ]; then
    INSTALL_PATH="$KIMI_TARGET"
else
    INSTALL_PATH="$AGENTS_TARGET"
fi

echo "Target installation path: $INSTALL_PATH"
echo ""

# Create target directory
mkdir -p "$INSTALL_PATH"

# Copy files
echo "Copying skill files..."
cp -r "$SOURCE_DIR/"* "$INSTALL_PATH/"

# Verify installation
echo ""
echo "Verifying installation..."
if [ -f "$INSTALL_PATH/SKILL.md" ]; then
    echo "✓ SKILL.md installed successfully"

    # Check frontmatter
    if head -1 "$INSTALL_PATH/SKILL.md" | grep -q "^---$"; then
        echo "✓ Frontmatter format is correct"
    else
        echo "✗ Warning: Frontmatter may be malformed"
    fi

    # Show skill info
    echo ""
    echo "Skill Information:"
    grep -A 1 "^name:" "$INSTALL_PATH/SKILL.md" | head -2
    grep -A 1 "^description:" "$INSTALL_PATH/SKILL.md" | head -2
else
    echo "✗ Installation failed"
    exit 1
fi

echo ""
echo "=========================================="
echo "Installation Complete!"
echo "=========================================="
echo ""
echo "Kimi-CLI skill paths (in priority order):"
echo "  User-level: ~/.kimi/skills/, ~/.config/agents/skills/, ~/.agents/skills/"
echo "  Project-level: .kimi/skills/, .agents/skills/"
echo ""
echo "Installed to: $INSTALL_PATH"
echo ""
echo "Next steps:"
echo "1. Restart Kimi CLI to load the new skill"
echo "2. Use /skill:$SKILL_NAME to invoke it"
echo ""

# Check for conflicts
echo "Checking for same skill in other locations..."
for path in "$HOME/.config/agents/skills/$SKILL_NAME" "$HOME/.agents/skills/$SKILL_NAME"; do
    if [ -d "$path" ] && [ "$path" != "$INSTALL_PATH" ]; then
        echo "  Found at: $path"
    fi
done