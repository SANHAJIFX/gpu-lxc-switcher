#!/bin/bash
set -e

REPO_URL="https://github.com/SANHAJIFX/gpu-lxc-switcher"
TMP_DIR="/tmp/gpu-lxc-switcher"

echo "[INFO] Downloading toolset from GitHub..."

rm -rf "$TMP_DIR"
mkdir -p "$TMP_DIR"

curl -sL "$REPO_URL/archive/refs/heads/main.zip" -o "$TMP_DIR/main.zip"
unzip -q "$TMP_DIR/main.zip" -d "$TMP_DIR"

INSTALL_DIR="/usr/local/bin"
SOURCE_DIR="$TMP_DIR/gpu-lxc-switcher-main/bin"
FILES=(gpu-menu gpu-switch gpu-fix-ct gpu-driver-tools)

echo "[INFO] Installing GPU passthrough tools to $INSTALL_DIR"

for file in "${FILES[@]}"; do
  install -m 755 "$SOURCE_DIR/$file" "$INSTALL_DIR/$file"
  echo "[OK] Installed: $file"
done

echo "[DONE] All tools installed."
echo "You can now run: gpu-menu"

# Optional cleanup
rm -rf "$TMP_DIR"
