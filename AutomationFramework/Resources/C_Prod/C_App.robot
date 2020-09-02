*** Settings ***
Library  SeleniumLibrary
Library  DateTime
Library  ../../CustomLibs/pyautogui_customs.py

Resource  C_AppPO.robot

*** Variables ***


*** Keywords ***

The user uploads an image file
    Use the File Selector to open the desktop files directory
    Load an image file using Pyautogui
    Click the now active "Share" button


The uploaded image file must show up on the screen
    Use Pyautogui to confirm the right image is showing on the screen


A new message must be triggered in the message section
    Confirm the image is in the message panel