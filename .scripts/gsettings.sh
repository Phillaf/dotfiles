# Generic hotkeys
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Super>k']"
gsettings set org.gnome.desktop.wm.keybindings move-to-side-e "['<Shift><Alt>l']"
gsettings set org.gnome.desktop.wm.keybindings move-to-side-w "['<Shift><Alt>h']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['<Shift><Alt>j', '<Control><Shift><Alt>Down']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "['<Shift><Alt>k', '<Control><Shift><Alt>Up']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Primary><Alt>j', '<Control><Alt>Up']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Primary><Alt>j', '<Control><Alt>Up']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Primary><Alt>k', '<Control><Alt>Up']"
gsettings set org.gnome.desktop.wm.keybindings unmaximize "['<Super>j', '<Alt>F5']"
gsettings set org.gnome.mutter.keybindings toggle-tiled-left "['<Super>h']"
gsettings set org.gnome.mutter.keybindings toggle-tiled-right "['<Super>l']"
gsettings set org.gnome.shell.app-switcher current-workspace-only true
gsettings set org.gnome.shell.overrides workspaces-only-on-primary false

# Custom Key Bindings
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/']"

gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'browser'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'google-chrome'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Super>w'


gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name 'terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command 'gnome-terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding '<Super>t'

gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ name 'file explorer'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ command 'nautilus'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ binding '<Super>f'
