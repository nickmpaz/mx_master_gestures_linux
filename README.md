# MX Master Gesture Controls For Ubuntu

## About

Logitech does not support gesture controls for the MX Master on Ubuntu. 
This is a hacky implementation of those gesture controls. It uses 
a keyboard shortcut for the MX Master thumb button to run a script. The
script listens for mouse movements and acts accordingly.

## Dependencies

- Python3
- xdotool

## Setup

Create a keyboard shortcut for Ctrl + Alt + Tab that runs this script.

## Controls
```
None  - Press super key            - super
Up    - Move up a workspace        - ctrl+alt+up
Down  - Move down a workspace      - ctrl+alt+down
Left  - Send window left a screen  - shift+super+left
Right - Send window right a screen - shift+super+right
```