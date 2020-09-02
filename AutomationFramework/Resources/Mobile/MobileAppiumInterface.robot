*** Settings ***
Library  AppiumLibrary

Resource  ../../Data/InputData.robot

*** Variables ***
${APPIUM_SERVER} =  http://127.0.0.1:4723/wd/hub
${PLATFROM_NAME} =  Android
${PLATFORM_VERSION} =  9
${DEVICE_NAME} =  Number
${APP_PACKAGE_NAME} =  com.app.name
${APP_ACTIVITY} =  com.app.name.MainActivity

${CONTINUE_BUTTON} =  xpath=//android.widget.TextView[@text='CONTINUE']
${INSTRUCTIONS} =  xpath=//android.widget.TextView[@text='INSTRUCTIONS']
${SIGN_IN_BTN} =  xpath=//android.widget.TextView[@text='SIGN IN']



*** Keywords ***
Open the app using the Android device
    open application  ${APPIUM_SERVER}  platformName=${PLATFROM_NAME}  platformVersion=${PLATFORM_VERSION}
                      ...  deviceName=${DEVICE_NAME}  automationName=Appium  appPackage=${APP_PACKAGE_NAME}
                      ...  appActivity=${APP_ACTIVITY}



Confirm the user sees the welcome screen and can click "Continue"
    AppiumLibrary.page should contain element  ${CONTINUE_BUTTON}
    Click the Continue button
    AppiumLibrary.page should contain element  ${INSTRUCTIONS}


Click the Continue button
    AppiumLibrary.click element  ${CONTINUE_BUTTON}

Test Teardown      [Teardown]     Close Application