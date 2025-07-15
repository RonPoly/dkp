# Quick DKP V2

Quick DKP V2 is an in-game Dragon Kill Points (DKP) management system for World of Warcraft. It includes three addons:

- **QDKP_V2** – the core module
- **QDKP2_GUI** – graphical interface
- **QDKP2_Config** – configuration menus

The project is released under the GNU General Public License v3.0 as noted in `QDKP_V2/License.txt`.

## Dependencies

All required Ace3 libraries are bundled with the addon. Optional integrations with AtlasLoot and DeadlyBossMods are declared in `QDKP_V2.toc` but are not mandatory.

## Installation (WoTLK 3.3.5)

1. Download or clone this repository.
2. Copy the folders `QDKP_V2`, `QDKP2_GUI` and `QDKP2_Config` into the `Interface/AddOns` directory of your WoTLK 3.3.5 client.
3. Launch the game and enable the three addons from the character selection screen.

## Basic Usage

A minimap button will appear once the addon is loaded.

- **Left click** to show or hide the main interface.
- **Right click** to open the options window.
- **Shift + drag** to reposition the button around the minimap.

Raid leaders can start and end DKP sessions using slash commands:

```bash
/qdkp newsession <name>   # Start a new session
/qdkp endsession          # End the active session
```

Other useful commands (see `CLI.lua` for the full list) include:

```bash
/qdkp gui [show|toggle|hide]
/qdkp roster [show|toggle|hide]
/qdkp log [show|toggle|hide]
/qdkp toolbox [show|toggle|hide]
/qdkp help                # Display all commands
```

These commands can also be issued using `/dkp` or `/qdkp2`.

