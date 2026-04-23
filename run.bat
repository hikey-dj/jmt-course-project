@echo off
java -version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Java is not installed.
    pause
    exit /b
)
echo Launching JMT...
start javaw -jar bin\jmt.jar
