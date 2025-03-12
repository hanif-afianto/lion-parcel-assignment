*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}        http://localhost:4723/wd/hub
${PLATFORM_NAME}     Android
${DEVICE_NAME}       RRCT404TJLB
${APP_PACKAGE}       com.lionparcel.services.consumer
${APP_ACTIVITY}      .MainActivity

*** Keywords ***
Start Application
    Open Application    ${REMOTE_URL}  
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    automationName=UiAutomator2

Stop Application
    Close Application
