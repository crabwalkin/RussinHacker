@echo off
cd %~dp0

:: --- Acer System Branding ---
AMIDEWINx64.EXE /SM "Acer Incorporated" >nul 2>&1
AMIDEWINx64.EXE /SP "Predator Orion 3000" >nul 2>&1
AMIDEWINx64.EXE /SK "DG.E2UEQ.001" >nul 2>&1
AMIDEWINx64.EXE /SS "S/N: NX123AA001987654321600" >nul 2>&1

:: --- Chassis Info (Gaming Desktop Style) ---
AMIDEWINx64.EXE /CM "Acer" >nul 2>&1
AMIDEWINx64.EXE /CS "Gaming Desktop Chassis" >nul 2>&1
AMIDEWINx64.EXE /CSK "CHSN-PO3-640" >nul 2>&1
AMIDEWINx64.EXE /CA "AT-ACER-GAMING-RIG" >nul 2>&1

:: --- Motherboard Info ---
AMIDEWINx64.EXE /BM "Acer" >nul 2>&1
AMIDEWINx64.EXE /BP "PO3-640" >nul 2>&1
AMIDEWINx64.EXE /BT "ATX" >nul 2>&1
AMIDEWINx64.EXE /BLC "Slot 1" >nul 2>&1

:: --- BIOS Info ---
AMIDEWINx64.EXE /IVN "American Megatrends Inc." >nul 2>&1

:: --- Optional CPU Info ---
AMIDEWINx64.EXE /PSN "Intel(R) Core(TM) i7-12700F" >nul 2>&1
AMIDEWINx64.EXE /PAT "CPU-ASSET-TAG-12700F" >nul 2>&1
AMIDEWINx64.EXE /PPN "Intel Core i7-12700F" >nul 2>&1

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
