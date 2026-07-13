# This sample code supports Appium Robot client >=2
# pip install robotframework-appiumlibrary
# Then you can paste this into a file and simply run with Robot
#
# Find keywords at: http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html
#
# If your tests fails saying 'did not match any elements' consider using 'wait activity' or
# 'wait until page contains element' before a click command

*** Settings ***
Library           AppiumLibrary
Test Teardown     Close Application


*** Variables ***
${SAUCE_USERNAME}    oauth-henriqueswell44-2991a
${REMOTE_URL}    https://${SAUCE_USERNAME}:%{SAUCE_ACCESS_KEY}@ondemand.us-west-1.saucelabs.com:443/wd/hub   

*** Test Cases ***
Selecionar Produto
    Open Application    ${REMOTE_URL}
    ...        platformName=Android
    ...        appium:platformVersion=16.0
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
    ${img_produto} =    Set Variable     android=new UiSelector().resourceId("com.saucelabs.mydemoapp.android:id/productIV").instance(0)
    Click Element    ${img_produto}
    Swipe    start_x=392    start_y=1027    end_x=413    end_y=201
    ${btn_adicionar_carrinho} =    Set Variable     accessibility_id=Tap to add product to cart
    Click Element    ${btn_adicionar_carrinho}
    ${ico_carrinho} =    Set Variable     android=new UiSelector().className("android.widget.ImageView").instance(3)
    Click Element    ${ico_carrinho}
    ${lbl_nome_produto} =    Set Variable     id=com.saucelabs.mydemoapp.android:id/titleTV
    Element Text Should Be    ${lbl_nome_produto}    Sauce Labs Backpack
    ${lbl_preco_produto} =    Set Variable     id=com.saucelabs.mydemoapp.android:id/priceTV
    Element Text Should Be    ${lbl_preco_produto}    $ 29.99


