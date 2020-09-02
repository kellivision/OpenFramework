*** Settings ***
Library  AppiumLibrary
Library  Collections

Resource  ../../Data/InputData.robot

*** Variables ***
${APPIUM_SERVER} =  http://127.0.0.1:4723/wd/hub
${PLATFROM_NAME} =  Android
${PLATFORM_VERSION} =  9
${DEVICE_NAME} =  number
${PWA_PACKAGE_NAME} =  com.android.chrome
${PWA_ACTIVITY} =  org.chromium.chrome.browser.webapps.SameTaskWebApkActivity

# Companion app variables -----
${CONTINUE_BUTTON} =  xpath=//android.widget.TextView[@text='CONTINUE']


*** Keywords ***
Open the Chrome browser using the Android
    ${Options}    Create Dictionary    androidPackage    ${PWA_PACKAGE_NAME}
    ${caps}    Create Dictionary    chromeOptions    ${Options}
    Set to Dictionary    ${caps}    platformName    ${PLATFROM_NAME}
    Set to Dictionary    ${caps}    platformVersion    ${PLATFORM_VERSION}
    Set To Dictionary    ${caps}    deviceName    ${DEVICE_NAME}
    Set To Dictionary    ${caps}    browserName    ${BROWSER}
    Create Webdriver    Remote    command_executor=${APPIUM_SERVER}    desired_capabilities=${caps}
    go to    http://www.google.com
