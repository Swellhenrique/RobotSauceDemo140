*** Settings ***
Library    SeleniumLibrary
Library    DateTime

Resource    cart_page.robot
Resource    inventory_item_page.robot
Resource    inventory_page.robot
Resource    login_page.robot

*** Variables ***
${timeout}    5000ms
${url}        https://www.saucedemo.com
${browser}    Chrome
${date}    

*** Keywords ***

Abrir navegador
    Register Keyword To Run On failure    Tirar Screenshot
    Obter Data e hora
    Open Browser    url=${url}    browser=${browser}
    Maximize Browser Window
    Set Browser Implicit Wait    10000ms
    Wait Until Element Is Visible    css=.login_logo    ${timeout}

Fechar navegador
    Sleep    500ms            # pode ser necessario para dar tempo de realizar a ultima açao/validaçao 
    Close Browser

Clicar no Carrinho
    Click Element    css=[data-test="shopping-cart-link"]
    Wait Until Element Contains    css=[data-test="title"]    Your Cart    ${timeout}

Realizar Logout
    Click Button    id=react-burger-menu-btn
    Wait Until Element Is Visible    css=[data-test="logout-sidebar-link"] ${timeout}
    Click Link    Click Element    css=[data-test="logout-sidebar-link"]
    Wait Until Element Is Visible    css=[data-test="login-button"]   ${timeout}



Obter Data e hora
    ${date} =    Get Current Date
    ${date} =    Convert Date    ${date}    result_format=%Y.%m.%d_%H.%M.%S
    ${date}    Set Suite Variable    ${date}
    
Tirar Screenshot   
    [Arguments]     ${screenshot_name}
    Capture Page Screenshot    screenshots/saucedemo/${TEST_NAME}/${date}/${screenshot_name}.png


