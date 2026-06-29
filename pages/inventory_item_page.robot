*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${inventory_item_product_name}     css=[data-test="inventory-item-name"]
${inventory_item_product_price}    css=div.inventory_details_price
${btn_add_to_cart}    css=button.btn.btn_primary.btn_small.btn_inventory

*** Keywords ***

Clicar no botao "add do cart"
    Click Button    ${btn_add_to_cart}