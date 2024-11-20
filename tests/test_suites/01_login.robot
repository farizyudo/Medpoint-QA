*** Settings ***
Library    AppiumLibrary
Suite Setup    Setup Application
Suite Teardown    Close Application

*** Variables ***
${DEVICE_NAME}    Android Emulator
${PLATFORM_VERSION}    11.0
${PLATFORM_NAME}    Android
${APP_PATH}    /path/to/your/app.apk
${USER_NAME}    testuser
${PASSWORD}    testpassword

*** Test Cases ***
Login Test
    [Documentation]    This test case performs login functionality test.
    Open Application
    Input Username    ${USER_NAME}
    Input Password    ${PASSWORD}
    Click Login Button
    Verify Successful Login

*** Keywords ***
Setup Application
    Open Application    ${DEVICE_NAME}    ${PLATFORM_VERSION}    ${PLATFORM_NAME}    ${APP_PATH}

Open Application
    [Documentation]    Opens the app using the provided capabilities.
    Open Application    ${DEVICE_NAME}    ${PLATFORM_VERSION}    ${PLATFORM_NAME}    ${APP_PATH}

Input Username
    [Documentation]    Enters the username into the username input field.
    Input Text    id=username_field    ${USER_NAME}

Input Password
    [Documentation]    Enters the password into the password input field.
    Input Text    id=password_field    ${PASSWORD}

Click Login Button
    [Documentation]    Clicks on the login button.
    Click Element    id=login_button

Verify Successful Login
    [Documentation]    Verifies the success message after login.
    Element Should Contain    id=welcome_message    Welcome, ${USER_NAME}
