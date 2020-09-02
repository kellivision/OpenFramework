*** Settings ***
Library  SeleniumLibrary
Library  DateTime
Library  ../../CustomLibs/pyautogui_customs.py

*** Variables ***
# TODO create a better xpath for the new message
${CPROD_MENU_ICON} =  xpath=//button[@title='Menu']
${CREATE_BUTTON} =  xpath=//button[@type='submit']
${FILE_SELECTOR} =  xpath=//div[@class='file-selector__select-message']
${LOGOUT_BUTTON} =  xpath=//div[@data-testid='logout']
${ONE_NEW_MESSAGE} =  xpath=//p[text()[contains(.,'new message')]]
${SHARE_BUTTON} =  xpath=//button[@type='share']


*** Keywords ***

Use the File Selector to open the desktop files directory
    click element  ${FILE_SELECTOR}
    set selenium implicit wait  5s


Load an image file using Pyautogui
    upload_jpg_file


Click the now active "Share" button
    click button  ${SHARE_BUTTON}


Confirm the image is in the message panel
    wait until element is visible  ${ONE_NEW_MESSAGE}


Use Pyautogui to confirm the right image is showing on the screen
    locate_img_uploaded
