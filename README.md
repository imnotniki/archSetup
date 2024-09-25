Just some tweaks I like to do:

Tweak | File | Description
--- | --- | ---
1 | [KeyRemaps] https://github.com/imnotniki/archSetup/tree/main/~/.config/keyboard) | Swap some keys on my keyboard
2 | [Shortcuts XFCE4](https://github.com/imnotniki/archSetup/blob/main/~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml) | My Keyboard shortcuts for XFCE4 DE

Keyboard Tweaks
===
Install xev using pacman:
```shell
sudo pacman -S xorg-xev
```

Either copy it from repo or create it using:
```shell
sudo mkdir -p ~/.config/keyboard && sudo touch >> ~/.config/keyboard/.keyRemap
```

Put this into .keyRemap:
```shell
keycode 118 = Prior
keycode 112 = Next
keycode 117 = End
```

Run or add to ~/.xinitrc:
```shell
xmodmap ~/.config/keyboard/.keyRemap
```

To check keycodes use:
```shell
xev | grep -A2 'keycode'
```

OBS Studio + plugins
===

```shell
pamac install flatpak
```
```shell
flatpak install com.obsproject.Studio
```
```shell
flatpak install com.obsproject.Studio.Plugin.GStreamerVaapi
```
