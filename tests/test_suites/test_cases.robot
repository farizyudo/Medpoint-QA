*** Settings ***
Library    AppiumLibrary
Resource   ../resources/keywords.robot
Variables  ../variables/variables.robot

*** Test Cases ***
Valid Login Test
    [Documentation]    Test valid login scenario
    Open Application
    Input Username    ${USERNAME}
    Input Password    ${PASSWORD}
    Click Login
    Validate Successful Login
