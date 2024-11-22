*** Settings ***
Library    AppiumLibrary
Variables  ../resources/variables/app_variables.json
Resource   ../resources/keywords/common_keywords.robot

*** Test Cases ***
Test Login Functionality
    [Documentation]    Menguji proses login menggunakan kredensial yang benar
    Open Application    ${server_url}    ${capabilities}
    Input Text    username_field_id    ${username}
    Input Text    password_field_id    ${password}
    Click Button  login_button_id
    Page Should Contain Element    home_page_identifier
    Close Application
