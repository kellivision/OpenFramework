*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/Command/C_AppPO.robot
Resource  ../../Data/InputData.robot

*** Variables ***

${LOGIN_USERNAME_FIELD} =   id=username
${LOGIN_PASSWORD_FIELD} =   id=password
${LOGOUT_MG} =  xpath=//a[@href='/logout']
${LOGIN_BUTTON} =  xpath=//button[@type='submit']
${MG_ACCOUNT_ADMIN} =  xpath=//a[@title='Account']


*** Keywords ***

The CProd user has successfully logged into the app
    Go to the App Landing Page
    Enter a valid non-admin username and password
    Click the "Sign in" button
    Verify successful logging in by header showing on the screen


Enter a valid Account Admin username and password
    wait until element is visible  ${LOGIN_USERNAME_FIELD}
    input text  ${LOGIN_USERNAME_FIELD}  ${LOGIN_USERNAME.${AccAdmin}}
    Fill Password field


Fill Password field
    input password  ${LOGIN_PASSWORD_FIELD}  ${LOGIN_PASSWORD}


Click the "Log in" button
    click button  ${LOGIN_BUTTON}


Click the "Sign in" button
    click button  ${LOGIN_BUTTON}


Go to the App Landing Page


Enter a valid non-admin username and password


Verify successful logging in by header showing on the screen