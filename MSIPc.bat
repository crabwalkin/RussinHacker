@echo off
cd %~dp0

:: --- MSI System Branding ---
AMIDEWINx64.EXE /SM "MSI" >nul 2>&1
AMIDEWINx64.EXE /SP "MSI GE76 Raider" >nul 2>&1
AMIDEWINx64.EXE /SK "DG.GE76.001" >nul 2>&1
AMIDEWINx64.EXE /SS "S/N: 45678M9876543210" >nul 2>&1

:: --- Chassis Info ---
AMIDEWINx64.EXE /CM "MSI" >nul 2>&1
AMIDEWINx64.EXE /CS "Gaming Laptop Chassis" >nul 2>&1
AMIDEWINx64.EXE /CSK "LTSN-GE76-800" >nul 2>&1
AMIDEWINx64.EXE /CA "AT-MSI-GE76-LAPTOP" >nul 2>&1

:: --- Motherboard Info ---
AMIDEWINx64.EXE /BM "MSI" >nul 2>&1
AMIDEWINx64.EXE /BP "GE76-800" >nul 2>&1
AMIDEWINx64.EXE /BT "Laptop" >nul 2>&1
AMIDEWINx64.EXE /BLC "Slot 1" >nul 2>&1

:: --- BIOS Info ---
AMIDEWINx64.EXE /IVN "MSI" >nul 2>&1

:: --- Optional CPU Info ---
AMIDEWINx64.EXE /PSN "Intel(R) Core(TM) i9-11980HK" >nul 2>&1
AMIDEWINx64.EXE /PAT "CPU-ASSET-TAG-11980HK" >nul 2>&1
AMIDEWINx64.EXE /PPN "Intel Core i9-11980HK" >nul 2>&1

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
