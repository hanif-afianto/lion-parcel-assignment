# Lion Parcel Pre-Test Recruitment - Quality Assurance Engineer

## Overview
This repository contains multiple automation test projects demonstrating expertise in API, Web UI, and Mobile application testing using **Robot Framework** with **Appium, Selenium, and RequestsLibrary**. These projects follow **Gherkin-style test scenarios** to ensure structured and readable test cases.

## Tech Stack
- **Robot Framework**
- **SeleniumLibrary** (for web automation)
- **AppiumLibrary** (for mobile automation)
- **RequestsLibrary** (for API testing)
- **Python** (for test execution and scripting)

## Projects Included
### 1. **API Automation - Reqres API**
Automates API tests for Reqres API endpoints using Robot Framework and RequestsLibrary.

#### Test Cases
- **Get Single User**: Fetches user details and verifies response status.
- **Create User**: Sends a POST request to create a new user and validates response data.

### 2. **Web UI Automation - SauceDemo Checkout**
Automates the checkout process on [SauceDemo](https://www.saucedemo.com/) using SeleniumLibrary.

#### Test Case
- **Checkout Process**: Logs in, adds a product to the cart, proceeds to checkout, and verifies order confirmation.

#### Test Case
- **Check Shipping Rate**: Inputs origin & destination, selects weight, chooses shipping method, and verifies estimated cost.

### 3. **Algorithm Challenge - Sort Even and Odd Numbers**
Python script to sort even numbers in descending order, followed by odd numbers in descending order.

### 4. **Mobile Automation - Lion Parcel "Cek Tarif" Feature**
Automates positive and negative test cases for the "Cek Tarif" feature in the Lion Parcel mobile app using Appium.


## Reports & Logs
Robot Framework automatically generates reports:
- **Execution Report:** `results/report.html`
- **Log File:** `results/log.html`

## Prerequisites
1. Install Python (3.x recommended)
2. Install Robot Framework:
   ```sh
   pip install robotframework
   ```
3. Install required libraries:
   ```sh
   pip install -r requirements.txt
   ```
4. Start Appium Server for mobile automation:
   ```sh
   appium
   ```

## Author
[Your Name]

## License
This project is licensed under the MIT License.

