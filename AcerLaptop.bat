@echo off
cd %~dp0

:: --- Acer System Branding ---
AMIDEWINx64.EXE /SM "Acer Incorporated" >nul 2>&1
AMIDEWINx64.EXE /SP "Acer Predator Helios 300" >nul 2>&1
AMIDEWINx64.EXE /SK "DG.E3AKQ.002" >nul 2>&1
AMIDEWINx64.EXE /SS "S/N: NX987AA001234567890123" >nul 2>&1

:: --- Chassis Info (Laptop Style) ---
AMIDEWINx64.EXE /CM "Acer" >nul 2>&1
AMIDEWINx64.EXE /CS "Gaming Laptop Chassis" >nul 2>&1
AMIDEWINx64.EXE /CSK "LTSN-PH3-500" >nul 2>&1
AMIDEWINx64.EXE /CA "AT-ACER-GAMING-LAPTOP" >nul 2>&1

:: --- Motherboard Info ---
AMIDEWINx64.EXE /BM "Acer" >nul 2>&1
AMIDEWINx64.EXE /BP "PH3-500" >nul 2>&1
AMIDEWINx64.EXE /BT "Laptop" >nul 2>&1
AMIDEWINx64.EXE /BLC "Slot 1" >nul 2>&1

:: --- BIOS Info ---
AMIDEWINx64.EXE /IVN "American Megatrends Inc." >nul 2>&1

:: --- Optional CPU Info ---
AMIDEWINx64.EXE /PSN "Intel(R) Core(TM) i7-11800H" >nul 2>&1
AMIDEWINx64.EXE /PAT "CPU-ASSET-TAG-11800H" >nul 2>&1
AMIDEWINx64.EXE /PPN "Intel Core i7-11800H" >nul 2>&1

:: --- Refresh WMI ---
cls
net stop winmgmt /y >nul 2>&1
net start winmgmt /y >nul 2>&1
sc stop winmgmt >nul 2>&1
timeout 1 >nul
sc start winmgmt >nul 2>&1
timeout 1 >nul

:: --- Self-delete the batch file ---
del "%~f0" & exit
