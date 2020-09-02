*** Settings ***
Documentation  Core Command app regression tests.

Resource  ../../Resources/Common/Common.robot
Resource  ../../Resources/Common/LoginHelper.robot
Resource  ../../Resources/C_Prod/C_App.robot



Test Setup  Begin Web Test
Test Teardown  End Web Test

#Copy/paste the line below in the terminal to run test cases
# robot -d results Tests/C_Tests/CProdSmokeTests.robot


*** Test Cases ***
Test Case 1: User should be able to upload an jpg image file
    [Documentation]  Test Condition 1: Cprod upload activities
    [Tags]  CProd Tests
    Given   The CProd user has successfully logged into the app
    When    The user uploads an image file
    Then    The uploaded image file must show up on the screen
    And     A new message must be triggered in the message section