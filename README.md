![screenshot](./screenshot.png)
![screenshot2](./screenshot2.png)

# install:

```sh
  chmod +x install.sh && ./install.sh
```

Here's a detailed example of a README entry that documents the configuration settings and key bindings you provided, formatted clearly for users to understand.

---

# Hyprland Configurations

This repo contains customizations for your Omarchy - Hyprland environment, including animation settings, border color adjustments, rounding changes, and keybindings for workspace management and window resizing. These settings are intended to enhance the look and feel of your Hyprland session.

## Animations

The following animation settings control the appearance and transitions within the workspace.

```ini
animations {
    enabled = yes

    bezier = softEase, 0.34, 0.0, 0.0, 1.2

    animation = workspaces, 1, 5, softEase, slide
    animation = fade,        1, 8, softEase
    animation = border,      1, 5, softEase
    animation = borderangle, 1, 12, softEase
}
```

- **`enabled = yes`**: Enables the animations globally.
- **`bezier = softEase, 0.34, 0.0, 0.0, 1.2`**: Defines a custom Bezier curve for easing the animations. This makes transitions smoother.
- **`animation = workspaces, 1, 5, softEase, slide`**: Animates workspace switches with a soft easing and a slide effect.
- **`animation = fade, 1, 8, softEase`**: Applies a fade effect during transitions with a soft easing curve.
- **`animation = border, 1, 5, softEase`**: Adds animation to window borders with a soft ease.
- **`animation = borderangle, 1, 12, softEase`**: Smoothly animates changes in the window border's angle.

## Border Customization

To create a lighter border with a rounded appearance, modify the following:

```ini
col.active_border = rgb(81a1c1)
```

This color code `rgb(81a1c1)` provides a light blue border for active windows. The visual effect is enhanced with more rounding compared to the default "Omarchy" theme for a smoother, softer look.

---

## Keybindings

These keybindings allow you to navigate workspaces, resize windows, and move windows between workspaces with easy shortcuts.

```ini
# Switch to the previous workspace
bind = CTRL SUPER, left, workspace, -1

# Switch to the next workspace
bind = CTRL SUPER, right, workspace, +1

# Resize the active window left by 50px
bind = SUPER ALT, left, resizeactive, -50 0

# Resize the active window right by 50px
bind = SUPER ALT, right, resizeactive, 50 0

# Resize the active window up by 50px
bind = SUPER ALT, up, resizeactive, 0 -50

# Resize the active window down by 50px
bind = SUPER ALT, down, resizeactive, 0 50

# Move the active window to the previous workspace
bind = SUPER_CTRL_SHIFT, left, movetoworkspace, -1

# Move the active window to the next workspace
bind = SUPER_CTRL_SHIFT, right, movetoworkspace, +1

# Move the active window to the upper workspace
bind = SUPER_CTRL_SHIFT, up, movetoworkspace, -1

# Move the active window to the lower workspace
bind = SUPER_CTRL_SHIFT, down, movetoworkspace, +1
```

### Explanation of Keybindings:

- **`bind = CTRL SUPER, left, workspace, -1`**: When pressing `CTRL` + `SUPER` + `left`, it switches to the previous workspace.

- **`bind = CTRL SUPER, right, workspace, +1`**: When pressing `CTRL` + `SUPER` + `right`, it switches to the next workspace.

- **Window Resizing**:

  - **`bind = SUPER ALT, left, resizeactive, -50 0`**: Resizes the active window to the left by 50 pixels.
  - **`bind = SUPER ALT, right, resizeactive, 50 0`**: Resizes the active window to the right by 50 pixels.
  - **`bind = SUPER ALT, up, resizeactive, 0 -50`**: Resizes the active window upwards by 50 pixels.
  - **`bind = SUPER ALT, down, resizeactive, 0 50`**: Resizes the active window downwards by 50 pixels.

- **Moving Windows Between Workspaces**:

  - **`bind = SUPER_CTRL_SHIFT, left, movetoworkspace, -1`**: Moves the active window to the previous workspace when pressing `SUPER` + `CTRL` + `SHIFT` + `left`.
  - **`bind = SUPER_CTRL_SHIFT, right, movetoworkspace, +1`**: Moves the active window to the next workspace when pressing `SUPER` + `CTRL` + `SHIFT` + `right`.
  - **`bind = SUPER_CTRL_SHIFT, up, movetoworkspace, -1`**: Moves the active window to the workspace above when pressing `SUPER` + `CTRL` + `SHIFT` + `up`.
  - **`bind = SUPER_CTRL_SHIFT, down, movetoworkspace, +1`**: Moves the active window to the workspace below when pressing `SUPER` + `CTRL` + `SHIFT` + `down`.

---
