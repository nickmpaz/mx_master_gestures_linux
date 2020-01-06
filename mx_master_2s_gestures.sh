#!/usr/bin/env python3
import subprocess
import time
import os

px_buffer = 10
poll_delay = 0.1

def get_mousepos():
    curr = subprocess.check_output(["xdotool", "getmouselocation"]).decode("utf-8")
    return [int(it.split(":")[1]) for it in curr.split()[:2]]

start_pos = get_mousepos()
time.sleep(poll_delay)
end_pos = get_mousepos()
x_diff = end_pos[0] - start_pos[0]
y_diff = end_pos[1] - start_pos[1]
moved_horizontal = True if abs(x_diff) > abs(y_diff) else False
diff = x_diff if moved_horizontal else y_diff

# no move
if abs(diff) < px_buffer:
    os.system('xdotool key super')
# move left
elif moved_horizontal and diff < 0:
    os.system('xdotool key shift+super+Left')
# move right
elif moved_horizontal and diff > 0:
    os.system('xdotool key shift+super+Right')
# move up
elif diff < 0:
    os.system('xdotool key ctrl+alt+Up')
# move down
else:
    os.system('xdotool key ctrl+alt+Down')