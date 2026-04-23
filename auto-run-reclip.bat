@echo off
title RECLIP FLASK SERVER - PORT 8899
color 0E

:: 1. 自動定位 USB 路徑
set "USB_PATH=%~dp0..\"
set "PYTHON_PATH=%USB_PATH%python"

:: 2. 設定環境變數 (等佢認得 python 同 pip)
set "PATH=%PYTHON_PATH%;%PYTHON_PATH%\Scripts;%PATH%"
set "PYTHONDONTWRITEBYTECODE=1"

echo =======================================================
echo   HUGO'S RECLIP SERVER IS STARTING...
echo =======================================================
echo.
echo [Config]
echo - Python: %PYTHON_PATH%
echo - Project: %~dp0
echo - URL: http://127.0.0.1:8899
echo.
echo -------------------------------------------------------

:: 3. 直接行 app.py
:: 如果你想之後自動開埋 Browser，可以喺下面加多行: start http://127.0.0.1:8899
python app.py

pause