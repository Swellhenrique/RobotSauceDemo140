*** Settings ***
Resource    ../../../pages/base_page.robot
Suite Setup    Obter Data e Hora
Test Setup    base_page.Abrir navegador
Task Teardown    base_page.Fechar navegador