#!/usr/bin/env python3

from pynput.mouse import Listener
import os
import time


class Monitor():

    activation_distance = 100
    max_time = 0.5

    def __init__(self):
        self.x_start = None
        self.y_start = None
        self.x_current = None
        self.y_current = None
        self.mouse_has_moved = False
        self.time_start = time.time()
        self.l = Listener(
            on_move=self.on_move,
        )
        self.l.start()
        self.start()

    def on_move(self, x, y):

        if not self.mouse_has_moved:
            self.mouse_has_moved = True
            self.x_start = x
            self.y_start = y

        self.x_current = x
        self.y_current = y

    def start(self):

        while True:

            # run out of time
            if time.time() - self.time_start > self.max_time:
                os.system("xte 'key Super_L'")

            elif not self.mouse_has_moved:
                continue

            # move right
            elif self.x_current - self.x_start > self.activation_distance:
                os.system(
                    "xte 'keydown Super_L' 'key Right' 'keyup Super_L'")

            # move left
            elif self.x_current - self.x_start < - self.activation_distance:
                os.system(
                    "xte 'keydown Super_L' 'key Left' 'keyup Super_L'")

            # move down
            elif self.y_current - self.y_start > self.activation_distance:
                os.system(
                    "xte 'keydown Control_L' 'keydown Alt_L' 'key Down' 'keyup Control_L' 'keyup Alt_L'")

            # move up
            elif self.y_current - self.y_start < - self.activation_distance:
                os.system(
                    "xte 'keydown Control_L' 'keydown Alt_L' 'key Up' 'keyup Control_L' 'keyup Alt_L'")

            else:
                continue

            break

        self.l.stop()

monitor = Monitor()
