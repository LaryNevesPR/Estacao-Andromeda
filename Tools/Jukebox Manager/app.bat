@echo off

:: Ensure pip is up to date
python -m pip install --upgrade pip

:: Install required dependencies
pip install -r requirements.txt

:: Run the script
call python app.py

pause
