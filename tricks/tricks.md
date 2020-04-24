### Swap Keys:
```bash
xmodmap -e "keycode 50 = Shift_L NoSymbol Shift_L"
xmodmap -e "keycode 66 = Caps_Lock NoSymbol Caps_Lock"
```

### Get the class of a window
```bash
xprop | grep WM_CLASS
```

### Set a compose key
```bash
setxkbmap -option compose:ralt
```

