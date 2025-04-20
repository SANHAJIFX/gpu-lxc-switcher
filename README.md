# GPU LXC Switcher

GPU passthrough automation tools for Proxmox LXC containers.


![GPU_LXC_SWITCHER](https://github.com/user-attachments/assets/d8ba4af1-ffbb-49a6-a3fe-7394d9ea018a)


## 📦 Tools Included

- `gpu-menu`: Select a privileged LXC container to assign the GPU using a dialog menu.
- `gpu-switch`: Automatically unassign the GPU from all containers and assign it to the selected one.
- `gpu-fix-ct`: Repair GPU access inside a container (adds missing mounts, binaries, paths).
- `gpu-driver-tools`: Display GPU and driver info, check compatibility, and offer install options.

## ✅ Features

- Works with Proxmox VE 8+
- Compatible with NVIDIA RTX cards
- Supports `nvidia-smi`, `nvtop`, `libcuda.so.1`, `libnvidia-ml.so.1`
- Detects privileged containers only
- Validates GPU passthrough success
- Easy to maintain and extend

## ⚙️ Installation

Run this from your Proxmox host:

```bash
bash <(curl -sSL https://raw.githubusercontent.com/YOUR_USERNAME/gpu-lxc-switcher/main/install.sh)
