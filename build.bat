@echo off
echo ========================================
echo Hikvision Warranty Checker - Build Tool
echo ========================================
echo.

echo Checking for icon.ico...
if not exist "icon.ico" (
    echo ERROR: icon.ico not found!
    echo Please make sure icon.ico is in the same folder.
    echo.
    pause
    exit /b 1
)
echo icon.ico found!
echo.

echo Installing required packages...
pip install -r requirements.txt
echo.

echo Building executable...
pyinstaller --onefile --windowed --icon=icon.ico --add-data "icon.ico;." --name HikvisionWarrantyChecker hikvision_warranty_checker.py
echo.

echo Cleaning up build files...
if exist "build" rmdir /s /q build
if exist "hikvision_warranty_checker.spec" del /q hikvision_warranty_checker.spec
if exist "HikvisionWarrantyChecker.spec" del /q HikvisionWarrantyChecker.spec
echo.

echo ========================================
echo Build complete!
echo File location: dist\HikvisionWarrantyChecker.exe
echo ========================================
pause
