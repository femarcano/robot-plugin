*** Settings ***
Library       OperatingSystem

*** Variables ***
${MESSAGE}    Hello, world!

*** Test Cases ***
My Test
    [Documentation]    Example test
    [Tags]    TAG1    TAG2
    [Setup][Teardown]
        Specify test setup and teardown. Have also synonyms [Precondition] and [Postcondition], respectively.
    [Template]
        Specifies the template keyword to use. The test itself will contain only data to use as arguments to that keyword.
    [Timeout]
    Log    ${MESSAGE}
    My Keyword    /tmp

Another Test
    Should Be Equal    ${MESSAGE}    Hello, world!

*** Keywords ***
My Keyword
    [Arguments]    ${path}
    Directory Should Exist    ${path}
