#!/bin/bash
set -e

INSTALL_DIR="/usr/local/bin"
FILES=(gpu-menu gpu-switch gpu-fix-ct gpu-driver-tools)

echo "[INFO] Installing GPU passthrough tools to $INSTALL_DIR"

for file in "${FILES[@]}"; do
  install -m 755 "bin/$file" "$INSTALL_DIR/$file"
  echo "[OK] Installed: $file"
done

echo "[DONE] All tools installed."
echo "You can now run: gpu-menu"
