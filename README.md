# 🌌 Omarchy Hyprland Config

A highly customized, animated, and productivity-focused configuration for the **Omarchy - Hyprland** environment. This setup features bouncy "overshot" animations, soft rounded aesthetics, robust window management, and a suite of productivity keybindings.

![screenshot](./screenshots/screenshot.png)
![screenshot2](./screenshots/screenshot2.png)

## 🚀 Installation

Apply the configurations by running the installation script:

```sh
chmod +x install.sh && ./install.sh
```

---

## ⌨️ Input & Region Setup

**⚠️ Important:** you must adjust the keyboard layout to match your region.

The default configuration includes `us` and `ir` layouts. Edit the `input` section in your config file to replace `ir` with your specific country code.

```ini
input {
  kb_layout = us,ir
  kb_options = compose:caps
  kb_options=grp:alt_shift_toggle
  repeat_rate = 40
  repeat_delay = 200
  numlock_by_default = true

  touchpad {
    scroll_factor = 1.5
  }
}

windowrule = scrolltouchpad 0.2, class:com.mitchellh.ghostty
windowrule = scrolltouchpad 1.5, class:(Alacritty|kitty)
```

## ✨ Look, Feel & Animations

This configuration moves away from standard linear transitions to a more dynamic, fluid experience using custom Bezier curves.

### 🎨 Aesthetics

- **Borders:** Thin (`1px`), colored in **Nord Blue** (`rgb(81a1c1)`).
- **Rounding:** Soft corner radius of `12px`.
- **Opacity:** Active windows are slightly transparent (`0.95`), while inactive windows dim further (`0.90`).
  - _Browsers (Brave, Zen, Chrome, Firefox, etc.) are forced to be fully opaque and unblurred._

### 🎬 Animation Engine

```ini
animations {
    enabled = yes

    bezier = overshot,      0.05, 0.9,  0.1,  1.05
    bezier = strongOvershot,0.05, 0.9,  0.1,  1.12
    bezier = easeOutExpo,   0.16, 1,    0.3,  1
    bezier = easeOutCirc,   0.0,  0.9,  0.3,  1
    bezier = md3,           0.05, 0.7,  0.1,  1
    bezier = fastLinear,    0,    0,    1,    1
    bezier = workspace, 0.2, 0.9, 0.1, 1.0

    animation = windows,     1, 4, strongOvershot, slide
    animation = windowsIn,   1, 3, strongOvershot, popin 82%
    animation = windowsOut,  1, 3, easeOutExpo,    slide
    animation = windowsMove, 1, 5, overshot,       slide

    animation = fade,        1, 6, easeOutExpo
    animation = layers,      1, 4, md3,          slide
    animation = layersIn,    1, 3, strongOvershot, popin 80%

    animation = workspaces, 1, 6, workspace, slide
    animation = specialWorkspace, 1, 5, easeOutExpo, slide

    animation = border,      1, 10, easeOutCirc
    animation = borderangle, 1, 110, fastLinear, loop

    animation = fadeDim,     1, 8, md3
}
```

---

## 📊 Modern Status Bar (Waybar)

The Waybar configuration has been overhauled to feature a **clean, floating aesthetic**.

- **Design:** Replaces the traditional solid bar with distinct, floating modules.
- **Cohesion:** Features consistent rounding and spacing to perfectly align with the Hyprland window geometry.

---

## 🎹 Keybindings
Note: The keybindings listed below are custom additions. Original/default keybindings remain unchanged.
### System 

| Key Combination       | Action                      |
| :-------------------- | :-------------------------- |
| **SUPER + L**         | Lock Screen                 |

### Navigation & Resizing

| Key Combination                   | Action                   |
| :-------------------------------- | :----------------------- |
| **CTRL + SUPER + ← / →**          | Switch Workspace         |
| **SUPER + CTRL + SHIFT + Arrows** | Move Window to Workspace |
| **SUPER + ALT + Arrows**          | Resize Active Window     |

---

## 🛡️ Idle & Power Management

The system uses `hypridle` to manage energy efficiency and security automatically.

1.  **1 Minute:** Only if Hyprlock isn't running, start the **Screensaver**.
2.  **2 Minutes:** **Lock the session** securely.
3.  **Locked + 5 Seconds:** Turn **Screen OFF**.
    - _On Resume:_ Screen turns on and brightness is restored.
4.  **Sleep/Suspend:** System locks automatically before entering sleep.
