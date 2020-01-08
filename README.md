# MX Master Gesture Controls For Ubuntu

## About

Logitech does not support gesture controls for the MX Master on Ubuntu. 
This is a hacky implementation of those gesture controls. It uses 
a keyboard shortcut for the MX Master thumb button to run a script. The
script listens for mouse movements and acts accordingly.

## Dependencies

- Python3
- xautomation

## Setup

Create a keyboard shortcut for Ctrl + Alt + Tab that runs this script.

## Controls
- Mouse Up (ctrl+alt+up) - move up a workspace
- Mouse Down (ctrl+alt+down) - move down a workspace
- Mouse Left (super+left) - move window left
- Mouse Right (super+right) - move window right
- No Movement (super) - activities overview
