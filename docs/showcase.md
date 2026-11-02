# TokyoNight

> Tokyo Night on COSMIC, blue chrome and a lime focus accent.

Pop!_OS 24.04 on the COSMIC desktop, one palette carried through the whole
machine: desktop, terminal, shell, editor, browser. This note is the rice
describing itself, written in Markdown and rendered by **Postilla**.

## Palette

Every text colour is checked against the window background ![#1A1B26](https://placehold.co/12x12/1a1b26/1a1b26.png) `#1A1B26`.

| Role | Hex | Contrast on background |
|------|-----|------------------------|
| Text | ![#C0CAF5](https://placehold.co/12x12/c0caf5/c0caf5.png) `#C0CAF5` | 10.6:1 |
| Blue, accent | ![#7AA2F7](https://placehold.co/12x12/7aa2f7/7aa2f7.png) `#7AA2F7` | 6.8:1 |
| Green, success | ![#9ECE6A](https://placehold.co/12x12/9ece6a/9ece6a.png) `#9ECE6A` | 9.4:1 |
| Yellow | ![#E0AF68](https://placehold.co/12x12/e0af68/e0af68.png) `#E0AF68` | 8.5:1 |
| Red, error | ![#F7768E](https://placehold.co/12x12/f7768e/f7768e.png) `#F7768E` | 6.5:1 |
| Cyan | ![#7DCFFF](https://placehold.co/12x12/7dcfff/7dcfff.png) `#7DCFFF` | 10.0:1 |
| Purple | ![#BB9AF7](https://placehold.co/12x12/bb9af7/bb9af7.png) `#BB9AF7` | 7.4:1 |

Containers sit one step away from the background at ![#24283B](https://placehold.co/12x12/24283b/24283b.png) `#24283B`, which is
what frosted glass blurs into.

## Where the colours go

```mermaid
flowchart LR
    P[TokyoNight palette] --> D[COSMIC desktop<br/>TokyoNight.ron, Dark slot]
    P --> T[COSMIC Terminal<br/>Tokyo Night]
    P --> S[zsh layer<br/>LS_COLORS, highlighting, starship]
    P --> E[Postilla<br/>syntax theme from the terminal scheme]
    T --> B[btop, bat, lsd, fastfetch]
    D --> F[Firefox<br/>Cosmic Night theme + userChrome]
```

## Setup, in order

- [x] Import `cosmic/TokyoNight.ron` into Appearance, **Dark** slot
- [x] Import `cosmic-term/TokyoNight-term.ron`, pick **Tokyo Night** for the profile
- [x] `./icons/install.sh` for the **Cosmic-TokyoNight** icons, `./cosmic/install.sh` for fonts and the terminal look
- [x] `./zsh/install.sh`, `./lsd/install.sh`, `./fastfetch/install.sh`
- [x] Cursor: Oxygen-TokyoNight-Blue
- [x] Wallpaper: `backgrounds/tokyonight-anime.png`
- [x] Screenshot for the README

## The baseline every rice shares

```ron
corner_radii: (
    radius_xs: (2.0, 2.0, 2.0, 2.0),   // squared corners
    radius_xl: (2.0, 2.0, 2.0, 2.0),
),
frosted: VeryLow,
frosted_windows: true,
frosted_panel: true,
frosted_applets: true,
frosted_maximized_apps: false,
gaps: (0, 7),
active_hint: 1,
```

Contrast is the WCAG ratio[^1], where $L$ is relative luminance:

```typst
$ (L_1 + 0.05) / (L_2 + 0.05) >= 4.5 $
```

---

*Rendered in Postilla, a Markdown notes app for COSMIC. The window is painted
with this rice's terminal scheme, imported as a syntax theme.*

[^1]: Web Content Accessibility Guidelines, success criterion 1.4.3. Normal text wants 4.5:1, large text 3:1.
