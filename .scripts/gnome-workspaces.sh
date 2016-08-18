gsettings set org.gnome.shell.app-switcher current-workspace-only true
gsettings set org.gnome.shell.overrides workspaces-only-on-primary false

dconf write /org/gnome/desktop/wm/keybindings switch-windows '<Alt>Tab'
dconf write /org/gnome/desktop/wm/keybindings switch-applications '<Super>Tab'
