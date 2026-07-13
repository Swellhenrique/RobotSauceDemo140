*** Settings ***
Library           AppiumLibrary

Suite Setup       Open Application    ${REMOTE_URL}    
    ...        appium:deviceName=Android GoogleAPI Emulator
    ...        appium:deviceOrientation=portrait
    ...        appium:app=storage:filename=mda-2.2.0-25.apk
    ...        appium:appPackage=com.saucelabs.mydemoapp.android
    ...        appium:appActivity=com.saucelabs.mydemoapp.android.view.activities.SplashActivity
    ...        appium:automationName=UiAutomator2
    ...        browserName=
    ...        appium:ensureWebviewsHavePages=${True}
    ...        appium:nativeWebScreenshot=${True}
   #...        sauce:options=[object Object]
    ...        appium:newCommandTimeout=${3600}
    ...        appium:connectHardwareKeyboard=${True}
Test Teardown    Limpar Carrinho e Deslogar
suite Teardown    Close Application

test template    Selecionar Produto

*** Variables ***
${SAUCE_USERNAME}    oauth-henriqueswell44-2991a
${REMOTE_URL}    https://${SAUCE_USERNAME}:%{SAUCE_ACCESS_KEY}@ondemand.us-west-1.saucelabs.com:443/wd/hub   

*** Test Cases ***
TC001    Sauce Labs Backpack                  $ 29.99    0
TC002    Sauce Labs Bike Light                $ 9.99    0    
TC003    Sauce Labs Bolt T-Shirt              $ 15.99    0
TC004    Sauce Labs Fleece Jacket             $ 49.99    0
TC005    Sauce Labs Onesie                    $ 7.99    1    
TC006    Test.allTheThings() T-Shirt (Red)    $ 15.99    1

*** Keywords ***
Selecionar Produto
    [Arguments]    ${product_name}    ${product_price}    ${swipe_count}
    ${img_produto} =    Set Variable     android=new UiSelector().resourceId("${product_name}")
    FOR    ${counter}    IN RANGE    ${swipe_count}
        Swipe   start_x=392    start_y=1027    end_x=413    end_y=201    
    END
    Click Element    ${img_produto}
    Swipe    start_x=392    start_y=1027    end_x=413    end_y=201    
    ${btn_adicionar_carrinho} =    Set Variable     accessibility_id=Tap to add product to cart
    Wait Until Element Is Visible    ${btn_adicionar_carrinho}
    Click Element    ${btn_adicionar_carrinho}
    ${ico_carrinho} =    Set Variable     android=new UiSelector().className("android.widget.ImageView").instance(3)
    Click Element    ${ico_carrinho}
    ${lbl_nome_produto} =    Set Variable     id=com.saucelabs.mydemoapp.android:id/titleTV
    Element Text Should Be    ${lbl_nome_produto}    ${product_name}
    ${lbl_preco_produto} =    Set Variable     id=com.saucelabs.mydemoapp.android:id/priceTV
    Element Text Should Be    ${lbl_preco_produto}    ${product_price}

Limpar Carrinho e Deslogar
    Click Element    id=com.saucelabs.mydemoapp.android:id/removeBt
    Click Element    id=com.saucelabs.mydemoapp.android:id/menuIV
    Click Element      xpath=//androidx.recyclerview.widget.RecyclerView[@content-desc="Recycler view for menu"]/android.view.ViewGroup[1]/android.widget.TextView[2]
