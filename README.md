# Demo Web Application Test Suite

## Overview
This project is an example test suite for a demo web application, focusing on testing a login system. It leverages the **Robot Framework** for test automation and includes a simple HTTP server to host the test application locally. The primary goal is to showcase browser-based UI testing using the SeleniumLibrary.

## Features
- A built-in HTTP server script to serve HTML test pages.
- Automated test cases for:
  - Logging into the demo application.
  - Verifying successful login.
- Modular test design using keywords in Robot Framework.

## Prerequisites

### Tools and Libraries
- **Python 3.6+**
- **Robot Framework**
- **SeleniumLibrary**
- **Web browser** (e.g., Chrome)
- **Chromedriver** (compatible with your browser version)

### Installation Steps
1. Clone the repository:
   ```bash
   git clone <repository_url>
   cd <repository_directory>
   ```

2. Set up a virtual environment (optional but recommended):
   ```bash
   python -m venv .venv
   source .venv/bin/activate    # On Windows: .venv\Scripts\activate
   ```

3. Ensure the correct version of Chromedriver is installed and added to your PATH.

## Project Structure
```
.
├── html/                       # Directory containing HTML files for the demo application
├── server.py                   # Simple HTTP server script
├── tests/
│   └── valid_login.robot       # Test suite for login functionality
├── README.md                   # Project documentation
```

## Running the Project

### Step 1: Start the HTTP Server
Run the `server.py` script to serve the demo application locally:
```bash
python server.py
```
The server will start on [http://localhost:7272](http://localhost:7272).

### Step 2: Execute the Test Suite
Run the Robot Framework test suite:
```bash
robot tests/valid_login.robot
```

### Step 3: View Results
After execution, Robot Framework generates the following output files:
- **output.xml**: Detailed execution logs.
- **report.html**: A comprehensive test report.
- **log.html**: Detailed test logs.

These files will be available in the project directory.

## Example Test Case
Here is an example of a login test case included in the suite:
```robot
*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Type In Username    demo
    Type In Password    mode
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]  Close Browser
```

## Customization
- Modify the `html/` directory to include custom HTML pages for testing.
- Update the test suite in `tests/login_tests.robot` to include additional test cases or scenarios.

## License
This project is provided for educational purposes and is open for modification and use in your projects.