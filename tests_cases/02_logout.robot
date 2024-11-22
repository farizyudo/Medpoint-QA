*** Settings ***
Library    AppiumLibrary
Variables  ../resources/variables/app_variables.json
Resource   ../resources/keywords/common_keywords.robot

*** Test Cases ***
Test Logout Functionality
    [Documentation]    Menguji proses logout setelah login berhasil
    Open Application    ${server_url}    ${capabilities}
    # Assumes login already happened
    Click Button    profile_menu_id
    Click Button    logout_button_id
    Page Should Contain Element    login_page_identifier
    Close Application
