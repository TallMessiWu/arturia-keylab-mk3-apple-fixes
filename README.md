# Arturia KeyLab mk3 · Logic Pro & MainStage fixes

[![English](https://img.shields.io/badge/Language-English-blue)](README.md) [![简体中文](https://img.shields.io/badge/语言-简体中文-red)](README.zh-CN.md)

Community fixes for the **KeyLab mk3 49, 61 and 88** integration scripts. Not an official Arturia release; not for KeyLab Essential or mkII.

## Installed the official scripts, but something still feels wrong?

This project started after installing Arturia's official scripts and encountering two problems with a KeyLab mk3 in DAW mode:

- **Logic Pro:** pressing the main encoder opened **Smart Controls**, when we expected the selected track's **instrument plug-in window**. The script bound the click to the Smart Controls command; this fix changes that binding.
- **MainStage Creator Studio:** the keyboard could display and browse presets, but **metronome, play/stop, record and tap buttons did nothing**. The original script's action fields did not match the Creator Studio application's name. Adding the matching fields restored those controls in our tests.

These are separate issues: the Logic binding change is not established as a Creator Studio-specific problem. This repository packages the fixes so you can install them without editing scripts yourself. It also includes MainStage patch-display corrections, explained below.

**If either symptom matches yours, install the corresponding package below.** If the official integration already works as you want, there is no need to replace it.

## Install — no coding needed

1. Quit **both Logic Pro and MainStage**.
2. Download the installer for the app you want to use:

   | App | Download |
   | --- | --- |
   | Logic Pro | [Download Logic installer](https://github.com/TallMessiWu/arturia-keylab-mk3-apple-fixes/raw/refs/heads/main/downloads/KeyLab-mk3-Logic-Fixed.dmg) |
   | MainStage, including Creator Studio | [Download MainStage installer](https://github.com/TallMessiWu/arturia-keylab-mk3-apple-fixes/raw/refs/heads/main/downloads/KeyLab-mk3-MainStage-Fixed.dmg) |

3. Open the `.dmg`. Inside it, double-click **Double-click to Install - KeyLab mk3**. Keep the three `.device` folders beside the installer; do not run the app after moving it out on its own. Allow Finder access if requested.
4. Connect/power on the keyboard, then launch your chosen app. Accept **Auto Assign** if offered. Put the keyboard in **DAW mode**.
5. In Logic's Control Surfaces setup, the input and output should both be **KeyLab … mk3 DAW**. In MainStage, start with a factory Keyboard concert to check automatic assignments.

**Switching between apps? Install the matching package again.** Both packages use the same profile location and filenames; the last installed version wins, even when the apps are not running together. No shortcut reset is required by these installers.

If macOS blocks opening the installer, use the per-app **Open Anyway** option in System Settings → Privacy & Security only after checking the download source. No need to disable system security. Alternatively, use the manual method below.

## What this fixes

| Symptom | Change |
| --- | --- |
| Logic: main encoder click opens Smart Controls instead of the instrument window | Bind the click to **Open/Close Instrument Plug-In Window of Focused Track**. |
| MainStage Creator Studio: metronome, play/stop, record, tap and other actions do not respond | Keep the original MainStage action fields and add Creator Studio application-name aliases. |
| MainStage: first patch display may not refresh; scrolling may show an adjacent patch's name | Fix initial selection state and selected-title handling; correct default set/patch navigation action definitions. |

MainStage's main encoder behavior is preserved: Arturia editing on the keyboard, **without adding a command to open the plug-in GUI**.

## Tested scope and limitations

- Hardware tested: **KeyLab 88 mk3**. The 49/61 profiles receive equivalent changes and code checks, but have **not** been tested on those keyboards.
- Host apps tested: **Logic Pro Creator Studio 13.0** and **MainStage Creator Studio 4.3.1**. Traditional MainStage fields are retained; perpetual-license versions were not separately hardware-tested.
- Physically verified: Logic instrument-window toggle; MainStage metronome, transport, recording and tap; eight knobs and nine faders using appropriate factory templates. Undo/redo and every set/patch navigation scenario have not been individually hardware-verified.
- MainStage knobs/faders map to a concert's screen controls. Their targets depend on its layout and mappings. Fader 9 is **not guaranteed** to mean master volume in every concert; encoder 9 is not a universal pan control. Existing concert mappings can override navigation defaults.
- **Not fixed:** on the first activation of each Arturia instrument after launching Logic, the keyboard may enter Arturia mode without a click. This was reproduced with Stage-73 V, Analog Lab and B-3 V2. Back returns to DAW mode; revisiting the same instruments did not retrigger it in the test session. Input capture found no main-encoder click. A plug-in initialization/connection cause is suspected, not proven by outgoing-message capture. No workaround that forces modes or disables plug-in connections is included.

## Manual installation / restore

Use Finder → Go → Go to Folder and enter:

```text
~/Music/Audio Music Apps/MIDI Device Profiles/Arturia/
```

With both apps closed, copy the three `.device` folders from **one** package into that directory, replacing the matching folders. The same source files are under [`profiles/logic`](profiles/logic) and [`profiles/mainstage`](profiles/mainstage). Preserve the `.device/config.lua` folder structure. Keep a copy of any personal modifications before replacement.

To restore Arturia's original mappings, reinstall the original package for your app from [Arturia resources](https://www.arturia.com/products/hybrid-synths/keylab-mk3/resources). This replaces profiles; it does not remove concert-specific mappings you made yourself.

## Technical notes and development

Logic changes `keyCmd=1296` to `keyCmd=2397` for main-encoder click in the tested host. Command IDs must be checked against the target Logic version, not assumed universal.

MainStage retains `action_mainstage` and adds `action_mainstagecs` and `action_mainstagecreatorstudio`. Defaults cover PanicFull, PlayStop, Record, TapTempo, Metronome, Undo, Redo, PreviousSet, NextSet, PreviousPatch and NextPatch. Selection state starts at `nil`; list insertion no longer shadows the selected patch title.

```sh
python3 -m venv .venv
.venv/bin/pip install -r requirements-dev.txt
.venv/bin/python tests/check_profiles.py
(cd downloads && shasum -a 256 -c SHA256SUMS)
```

Tests use Lua 5.2 via Lupa. They check the initial display, 408 list-selection/scrolling cases, action aliases, model consistency and Logic's click binding. They cannot replace real-host/hardware testing. See [AGENTS.md](AGENTS.md) for development and packaging rules and [scripts/verify_packages.py](scripts/verify_packages.py) to compare mounted installers with source.

## Credits and upstream

The upstream script headers credit **Farès MEZDOUR**, copyright 2023, script version 1.4. Original headers are preserved. The installers retain the upstream installer app and contain the modified profiles. This project does not claim ownership of Arturia's code or grant a new license to it; see [NOTICE.md](NOTICE.md).

- [Official setup and troubleshooting](https://support.arturia.com/hc/en-us/articles/15637916754204-KeyLab-mk3-DAW-Integration)
- [Official downloads and integration guides](https://www.arturia.com/products/hybrid-synths/keylab-mk3/resources)

For an issue report, include keyboard model, app/version (including Creator Studio or perpetual), installed profile, concert/template and reproducible steps. Remove private project data and MIDI recordings before attaching files.
