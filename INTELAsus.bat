@echo off
cd %~dp0

:: --- Legitimate, polished system branding (common OEM standard) ---
AMIDEWINx64.EXE /SM "ASUSTeK COMPUTER INC." >nul 2>&1
AMIDEWINx64.EXE /SP "PRIME Z690-A" >nul 2>&1
AMIDEWINx64.EXE /SK "SKU-Z690-001" >nul 2>&1
AMIDEWINx64.EXE /SS "System-12345678" >nul 2>&1
AMIDEWINx64.EXE /CM "ASUSTeK COMPUTER INC." >nul 2>&1
AMIDEWINx64.EXE /CS "Desktop Chassis" >nul 2>&1
AMIDEWINx64.EXE /CSK "CHSN-Z690A-001" >nul 2>&1
AMIDEWINx64.EXE /CA "AT-ASUS-Z690A" >nul 2>&1

:: --- Baseboard (Motherboard) Info ---
AMIDEWINx64.EXE /BM "ASUSTeK COMPUTER INC." >nul 2>&1
AMIDEWINx64.EXE /BP "PRIME Z690-A" >nul 2>&1
AMIDEWINx64.EXE /BT "ATX" >nul 2>&1
AMIDEWINx64.EXE /BLC "Slot 1" >nul 2>&1

:: --- BIOS Vendor ---
AMIDEWINx64.EXE /IVN "American Megatrends International, LLC." >nul 2>&1
AMIDEWINx64.EXE /BS "B123456789-Z690" >nul 2>&1

:: --- Optional: CPU Info ---
AMIDEWINx64.EXE /PSN "CPU-SN-001" >nul 2>&1
AMIDEWINx64.EXE /PAT "ASSET-CPU-Z690" >nul 2>&1
AMIDEWINx64.EXE /PPN "INTEL I7-12700KF" >nul 2>&1

:: --- Refresh WMI to reflect changes system-wide ---
cls
net stop winmgmt /y >nul 2>&1
net start winmgmt /y >nul 2>&1
sc stop winmgmt >nul 2>&1
timeout 1 >nul
sc start winmgmt >nul 2>&1
timeout 1 >nul

:: --- Self-delete the batch file ---
del "%~f0" & exit
