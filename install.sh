#!/usr/bin/bash

CONFIG_DIRS=("fastfetch" "ghostty" "hypr" "waybar")

SOURCE_DIR="$(pwd)"

DEST_DIR="$HOME/.config"

BACKUP_DIR="$HOME/backup_configs_$(date +%Y%m%d_%H%M%S)"

echo "🔄 Starting configuration setup..."
echo "All existing configs will be backed up to: $BACKUP_DIR"
mkdir -p "$BACKUP_DIR"

for dir in "${CONFIG_DIRS[@]}"; do
  SRC_PATH="$SOURCE_DIR/$dir"
  DEST_PATH="$DEST_DIR/$dir"

  if [ -d "$DEST_PATH" ]; then
    echo "📦 Backing up existing $dir to $BACKUP_DIR/"
    mv "$DEST_PATH" "$BACKUP_DIR/"
  fi

  if [ -d "$SRC_PATH" ]; then
    echo "📁 Copying $dir to $DEST_DIR/"
    mkdir -p "$DEST_DIR"
    cp -r "$SRC_PATH" "$DEST_DIR/"
  else
    echo "⚠️  Warning: $SRC_PATH not found, skipping..."
  fi
done

echo ""
echo "🎉 All done!"
echo "✅ Configs are now in: $DEST_DIR"
echo "🗃️  Backup saved in: $BACKUP_DIR"
hyprctl reload
