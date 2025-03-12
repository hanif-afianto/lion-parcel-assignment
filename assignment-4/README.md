# Automated Test for "Cek Tarif" Feature in Lion Parcel App

## Overview
This project automates the positive and negative test cases for the "Cek Tarif" (Check Shipping Rate) feature on the Lion Parcel mobile application using **Robot Framework** and **Appium**. It follows the **Gherkin** style for test scenarios.

## Tech Stack
- **Robot Framework**
- **Appium Library** for Robot Framework
- **Gherkin Syntax** for test scenarios

## Prerequisites
1. Install Python (3.x recommended)
2. Install Robot Framework:
   ```bash
   pip install robotframework
   ```
3. Install Appium Library:
   ```bash
   pip install robotframework-appiumlibrary
   ```
4. Install and start **Appium Server**:
   ```bash
   npm install -g appium
   appium
   ```
5. Connect an Android/iOS device with **USB Debugging enabled**.

## Project Structure
```
├── resources
│   ├── config
│   │   ├── environment.resource  # Appium setup and application start/stop
│   ├── locators
│   │   ├── home_locators.resource  # Locators for the home screen
│   │   ├── check_tarif_locators.resource  # Locators for the "Cek Tarif" feature
│   ├── pages
│   │   ├── home_page.resource  # Home page actions
│   │   ├── check_tarif_page.resource  # "Cek Tarif" page actions
│
├── tests
│   ├── features
│   │   ├── check_tarif.feature  # Gherkin-style test scenarios
│   ├── step_definitions
│   │   ├── check_tarif_steps.robot  # Step definitions for Gherkin tests
```

## Configuration
Modify `environment.resource` for your specific device:
```robot
*** Variables ***
${REMOTE_URL}        http://localhost:4723/wd/hub
${PLATFORM_NAME}     Android
${DEVICE_NAME}       <Your_Device_Name>
${APP_PACKAGE}       com.lionparcel.services.consumer
${APP_ACTIVITY}      .MainActivity
```

## Running the Tests
To execute tests, use:
```bash
robot -d results tests/step_definitions/check_tarif_steps.robot
```
This will run the tests and store the results in the `results/` folder.

## Reporting
Robot Framework automatically generates reports:
- **`log.html`**: Detailed test execution logs
- **`report.html`**: Summary of test results