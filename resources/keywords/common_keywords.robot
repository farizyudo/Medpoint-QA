*** Keywords ***
Open Application
    [Arguments]    ${appium_url}    ${capabilities}
    Open Application    ${appium_url}    ${capabilities}

Close Application
    [Arguments]    ${driver}
    Close Application    ${driver}
