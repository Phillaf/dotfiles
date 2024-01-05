# Generic hotkeys

gsettings set org.gnome.shell.app-switcher current-workspace-only true
gsettings set org.gnome.shell.overrides workspaces-only-on-primary false

gsettings set org.gnome.settings-daemon.plugins.media-keys www "['<Super>w']"
gsettings set org.gnome.settings-daemon.plugins.media-keys home "['<Super>e']"

# Custom Key Bindings
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'gnome-terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Super>t'

# remove caps
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:ctrl_modifier']"

