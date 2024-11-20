#!/bin/bash

# Start Appium Server
appium &

# Wait for Appium Server to start
sleep 10

# Run Robot Framework Tests
robot tests/test_suites/test_cases.robot
