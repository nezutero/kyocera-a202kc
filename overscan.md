# Using overscan to hide on-screen elements

**Overscan** is an ADB command that may be used to move on-screen elements such as the bottom navigation bar or top status bar off of the screen.

It should be noted that [[third_party_apps:tt9|TT9]] places the suggestion bar directly on top of the navigation bar. Because of this, it is recommended to use overscan to move the navigation bar just barely off-screen in order to keep the suggestion bar visible when needed.

**Overscan is perfectly safe to use and is easily reversible.**

## Hiding the navigation bar

This section assumes that you already have [[:setting_up_adb|ADB]] installed and set up on a PC.

> [!IMPORTANT]
> The F1 and F2 (as well as F3 and F4 on some models) buttons have programmed functions per stock app. These functions are labeled in the navigation bar, and so the function labels would be hidden by overscan. The functions themselves will still of course remain, but you would need to memorize these functions for when you use stock apps.

### Large display (default setting)

```bash
adb shell wm overscan 0,0,0,-72
````

### Small display

```bash
adb shell wm overscan 0,0,0,-61
```

### Reset

```bash
adb shell wm overscan 0,0,0,0
```
