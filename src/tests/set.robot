*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Value changes if it is set manually
    Go To  ${HOME_URL}
    Click Button  Nollaa
    Input Text  value  10
    Submit Form  aseta
    Page Should Contain  nappia painettu 10 kertaa

Strings wont get passed to value
    Go To  ${HOME_URL}
    Input Text  value  five
    Page Should Contain  nappia painettu 10 kertaa
