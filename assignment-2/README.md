# Robot Framework UI Automation - SauceDemo Checkout

## Overview
This project automates the checkout process on [SauceDemo](https://www.saucedemo.com/) using the [Robot Framework](https://robotframework.org/) and [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/). The test simulates a user's journey from login to order confirmation following Gherkin-style test cases.

## Project Structure
```
assignment-2/
│── resources/
│   ├── config/
│   │   └── environment.resource          # Environment configurations
│   ├── locators/
│   │   ├── cart_locators.resource        # Locators for cart elements
│   │   ├── checkout_locator.resource     # Locators for checkout elements
│   │   ├── login_locators.resource       # Locators for login elements
│   │   ├── product_locators.resource     # Locators for product elements
│   ├── pages/
│   │   ├── cart_page.resource            # Actions for cart page
│   │   ├── checkout_page.resource        # Actions for checkout page
│   │   ├── login_page.resource           # Actions for login page
│   │   ├── product_page.resource         # Actions for product page
│── tests/
│   ├── features/
│   │   ├── checkout.feature              # Feature file for checkout
│   ├── step_definitions/
│   │   ├── checkout_steps.robot          # Step definitions for checkout
│── README.md                             # Project documentation
│── requirements.txt                      # Dependencies
```

## Prerequisites
1. Install [Python](https://www.python.org/downloads/)
2. Install Robot Framework:
   ```sh
   pip install robotframework
   ```
3. Install SeleniumLibrary:
   ```sh
   pip install robotframework-seleniumlibrary
   ```
4. Ensure all dependencies are installed by running:
   ```sh
   pip install -r requirements.txt
   ```

## Test Case
### Shopping Cart Checkout
**File:** `tests/features/checkout.feature`
**Description:** Automates the process of logging in, adding a product to the cart, proceeding through checkout, and verifying order confirmation.

**Gherkin-style Steps:**
```gherkin
Scenario: Successful checkout process on SauceDemo
  Given the user is on the SauceDemo login page
  When the user logs in with valid credentials
  And the user adds "Sauce Labs Backpack" to the cart
  And the user proceeds to checkout
  And the user enters shipping details
  And the user confirms the order
  Then the order should be successfully placed
```

## Running the Tests
Run all tests using:
```sh
robot tests/
```
Run a specific test:
```sh
robot tests/step_definitions/checkout_steps.robot
```
Run tests with logs and reports:
```sh
robot --outputdir results tests/
```

## Reports & Logs
- **Execution Report:** `results/report.html`
- **Log File:** `results/log.html`

## Contributing
- Follow best practices for Robot Framework test writing.
- Maintain consistency in Gherkin-style formatting.
- Ensure tests are independent and reusable.