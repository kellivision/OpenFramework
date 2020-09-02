from pyautogui import *
import pyautogui
import os
import time

jpg_image = "Boris.jpg"

path_dir = r"dir"

upload_path = os.sep.join([path_dir, jpg_image])
distance = 300

# a, b = pyautogui.position()


def upload_jpg_file():
    pyautogui.write(upload_path, interval=0.25)
    pyautogui.press('return')

