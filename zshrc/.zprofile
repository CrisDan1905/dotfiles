# Auto-launch Hyprland on TTY1
if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec Hyprland
fi


# Created by `pipx` on 2025-12-14 16:45:23
export PATH="$PATH:/home/danilosky/.local/bin"
