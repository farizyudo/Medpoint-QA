# Mobile Automation Project with Appium & Robot Framework

This project is designed to automate mobile application testing using **Appium** and **Robot Framework**. The aim is to simplify and speed up testing for Android applications.

## Table of Contents
- [Introduction](#introduction)
- [Technologies Used](#technologies-used)
- [Installation](#installation)
- [Usage](#usage)
- [Test Execution](#test-execution)

## Introduction
This project automates the testing of Android mobile applications using Appium and Robot Framework. It aims to reduce manual testing effort and provide reliable automated test cases.

## Technologies Used
- **Appium**: Mobile automation tool for Android.
- **Robot Framework**: Test automation framework.
- **Python**: Programming language for scripts and libraries.

## Installation
1. Clone this repository:
   ```bash
   git clone https://github.com/-repository.git
   
2. Navigate to the project directory
    cd your-repository

3. Create and activate a virtual environment:
    - python3 -m venv venv
    - source venv/bin/activate  # For Linux/Mac
    - venv\Scripts\activate     # For Windows

4. Install the dependencies:
    - pip install -r requirements.txt

## Usage
1. Start Appium server:
   ```bash
   appium

2. Run tests with Robot Framework : 
  robot -d reports/ tests/


## Test Execution
To run the tests, make sure Appium server is running. Then execute:
```bash
robot -d reports/ tests/
The test results will be available in the reports/ folder, including report.html and log.html.

