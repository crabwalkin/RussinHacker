@echo off
cd %~dp0

:: --- Lenovo System Branding ---
AMIDEWINx64.EXE /SM "Lenovo" >nul 2>&1
AMIDEWINx64.EXE /SP "Lenovo ThinkPad X1 Carbon" >nul 2>&1
AMIDEWINx64.EXE /SK "DG.TP1.003" >nul 2>&1
AMIDEWINx64.EXE /SS "S/N: L9T234567890" >nul 2>&1

:: --- Chassis Info ---
AMIDEWINx64.EXE /CM "Lenovo" >nul 2>&1
AMIDEWINx64.EXE /CS "Business Laptop Chassis" >nul 2>&1
AMIDEWINx64.EXE /CSK "LTSN-TP1-600" >nul 2>&1
AMIDEWINx64.EXE /CA "AT-LENOVO-THINKPAD-LAPTOP" >nul 2>&1

:: --- Motherboard Info ---
AMIDEWINx64.EXE /BM "Lenovo" >nul 2>&1
AMIDEWINx64.EXE /BP "TP1-600" >nul 2>&1
AMIDEWINx64.EXE /BT "Laptop" >nul 2>&1
AMIDEWINx64.EXE /BLC "Slot 1" >nul 2>&1

:: --- BIOS Info ---
AMIDEWINx64.EXE /IVN "Lenovo" >nul 2>&1

:: --- Optional CPU Info ---
AMIDEWINx64.EXE /PSN "Intel(R) Core(TM) i5-10310U" >nul 2>&1
AMIDEWINx64.EXE /PAT "CPU-ASSET-TAG-10310U" >nul 2>&1
AMIDEWINx64.EXE /PPN "Intel Core i5-10310U" >nul 2>&1

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
