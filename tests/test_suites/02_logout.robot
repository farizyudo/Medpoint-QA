*** Settings ***
Library    AppiumLibrary
Suite Setup    Setup Application
Suite Teardown    Close Application

*** Variables ***
${DEVICE_NAME}    Android Emulator
${PLATFORM_VERSION}    11.0
${PLATFORM_NAME}    Android
${APP_PATH}    /path/to/your/app.apk

*** Test Cases ***
Logout Test
    [Documentation]    This test case performs logout functionality test.
    Open Application
    Click Profile Icon
    Click Logout Button
    Verify Successful Logout

*** Keywords ***
Setup Application
    Open Application    ${DEVICE_NAME}    ${PLATFORM_VERSION}    ${PLATFORM_NAME}    ${APP_PATH}

Open Application
    [Documentation]    Opens the app using the provided capabilities.
    Open Application    ${DEVICE_NAME}    ${PLATFORM_VERSION}    ${PLATFORM_NAME}    ${APP_PATH}

Click Profile Icon
    [Documentation]    Clicks on the profile icon in the app.
    Click Element    id=profile_icon

Click Logout Button
    [Documentation]    Clicks on the logout button in the profile menu.
    Click Element    id=logout_button

Verify Successful Logout
    [Documentation]    Verifies that the user has logged out successfully.
    Element Should Contain    id=login_button    Login
