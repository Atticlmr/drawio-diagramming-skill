: '#!/bin/bash
# OpenCode Skill Auto-Installer for drawio-diagramming
# This script installs the drawio-diagramming skill to OpenCode

set -e

SKILL_NAME="drawio-diagramming"
SOURCE_DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET_DIR="$HOME/.config/opencode/skills/$SKILL_NAME"

echo "=========================================="
echo "OpenCode Skill Installer"
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

# Create target directory
echo "Creating target directory: $TARGET_DIR"
mkdir -p "$TARGET_DIR"

# Copy files
echo "Copying skill files..."
cp -r "$SOURCE_DIR/"* "$TARGET_DIR/"

# Verify installation
echo ""
echo "Verifying installation..."
if [ -f "$TARGET_DIR/SKILL.md" ]; then
    echo "✓ SKILL.md installed successfully"
    
    # Check frontmatter
    if head -1 "$TARGET_DIR/SKILL.md" | grep -q "^---$"; then
        echo "✓ Frontmatter format is correct"
    else
        echo "✗ Warning: Frontmatter may be malformed"
    fi
    
    # Show skill info
    echo ""
    echo "Skill Information:"
    grep -A 1 "^name:" "$TARGET_DIR/SKILL.md" | head -2
    grep -A 1 "^description:" "$TARGET_DIR/SKILL.md" | head -2
else
    echo "✗ Installation failed"
    exit 1
fi

echo ""
echo "=========================================="
echo "Installation Complete!"
echo "=========================================="
echo ""
echo "Next steps:"
echo "1. Restart OpenCode to load the new skill"
echo "2. The skill will be available as: skill name=$SKILL_NAME"
echo ""
echo "Installed location: $TARGET_DIR"
echo ""

# Optional: Verify against other skill locations
echo "Checking other skill locations..."
for location in "$HOME/.claude/skills/$SKILL_NAME" "$HOME/.agents/skills/$SKILL_NAME"; do
    if [ -d "$location" ]; then
        echo "  Found duplicate at: $location"
    fi
done