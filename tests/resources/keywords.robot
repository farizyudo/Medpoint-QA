*** Keywords ***
Open Application
    Open Application    ${APP_PATH}    ${DEVICE_NAME}

Input Username
    [Arguments]    ${username}
    Input Text    id=username_field    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    id=password_field    ${password}

Click Login
    Click Element    id=login_button

Validate Successful Login
    Page Should Contain Element    id=welcome_message
