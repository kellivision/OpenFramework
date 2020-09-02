*** Settings ***
Library  SeleniumLibrary
Library  DateTime

*** Variables ***
# Configuration
${BROWSER} =  chrome
${ENVIRONMENT} =  smoke

&{BASE_URL} =  mg=https://app.  c=https://c.  mob=https://mo.
&{ENV_URL} =  smoke=smoke.co  prep=prep.co

${NEW_USER_NAME} =  SearchinDB01


# -- Orgs
${ORG_IN_USE_NAME} =  ABC
&{ADMIN_ORG_NAV} =  NavOrg=xpath=//a[text()[contains(.,'navOrg')]]  ABC=xpath=//a[text()[contains(.,'abc')]]


${IMAGE_FILE_TO_DOWNLOAD} =  xpath=//span[@title='Download this']
${LARGE_MP4_VIDEO_FILE} =  1lecture1.mp4
${PDF_FILE} =  Latest Proverbs.pdf

#Input boxes
${TEXTAREA} =  xpath=//textarea[contains(@class,'txt')]



*** Keywords ***

Enter a New Username with a date Suffix
    ${first_date} =  get time
    ${date}    Convert Date    ${first_date}    result_format=%d%b%Y_%I%M
    ${New_User} =  Catenate  SEPARATOR=_  ${NEW_USER_NAME}  ${date}
    input text  id=username  ${New_User}