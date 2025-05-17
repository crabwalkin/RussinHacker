@echo off
cd %~dp0

:: --- Gigabyte System Branding ---
AMIDEWINx64.EXE /SM "Gigabyte Technology" >nul 2>&1
AMIDEWINx64.EXE /SP "Gigabyte AORUS 15G" >nul 2>&1
AMIDEWINx64.EXE /SK "DG.AORUS.001" >nul 2>&1
AMIDEWINx64.EXE /SS "S/N: NQ123AA012345678901234" >nul 2>&1

:: --- Chassis Info (Gaming Laptop Style) ---
AMIDEWINx64.EXE /CM "Gigabyte" >nul 2>&1
AMIDEWINx64.EXE /CS "Gaming Laptop Chassis" >nul 2>&1
AMIDEWINx64.EXE /CSK "LTSN-AORUS-600" >nul 2>&1
AMIDEWINx64.EXE /CA "AT-GIGABYTE-GAMING-LAPTOP" >nul 2>&1

:: --- Motherboard Info ---
AMIDEWINx64.EXE /BM "Gigabyte" >nul 2>&1
AMIDEWINx64.EXE /BP "AORUS-600" >nul 2>&1
AMIDEWINx64.EXE /BT "Laptop" >nul 2>&1
AMIDEWINx64.EXE /BLC "Slot 1" >nul 2>&1

:: --- BIOS Info ---
AMIDEWINx64.EXE /IVN "American Megatrends Inc." >nul 2>&1

:: --- Optional CPU Info ---
AMIDEWINx64.EXE /PSN "Intel(R) Core(TM) i7-10870H" >nul 2>&1
AMIDEWINx64.EXE /PAT "CPU-ASSET-TAG-10870H" >nul 2>&1
AMIDEWINx64.EXE /PPN "Intel Core i7-10870H" >nul 2>&1

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
