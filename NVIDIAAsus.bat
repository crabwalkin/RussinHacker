@echo off
cd %~dp0

:: --- System branding ---
AMIDEWINx64.EXE /SM "NVIDIA Corporation" >nul 2>&1
AMIDEWINx64.EXE /SP "GeForce RTX System" >nul 2>&1
AMIDEWINx64.EXE /SK "RTX-SKU-4090A" >nul 2>&1
AMIDEWINx64.EXE /SS "RTX-SYSTEM-987654321" >nul 2>&1

:: --- Chassis info ---
AMIDEWINx64.EXE /CM "NVIDIA Partner Build" >nul 2>&1
AMIDEWINx64.EXE /CS "Mid-Tower Gaming Chassis" >nul 2>&1
AMIDEWINx64.EXE /CSK "CHSN-NV-GAME001" >nul 2>&1
AMIDEWINx64.EXE /CA "AT-NVIDIA-RIG" >nul 2>&1

:: --- Baseboard info ---
AMIDEWINx64.EXE /BM "ASRock" >nul 2>&1
AMIDEWINx64.EXE /BP "X670E Taichi Carrara" >nul 2>&1
AMIDEWINx64.EXE /BT "ATX" >nul 2>&1
AMIDEWINx64.EXE /BLC "Main Slot" >nul 2>&1

:: --- BIOS ---
AMIDEWINx64.EXE /IVN "American Megatrends International, LLC." >nul 2>&1
AMIDEWINx64.EXE /BS "NV-BIOS-4090A" >nul 2>&1

:: --- CPU Info ---
AMIDEWINx64.EXE /PSN "RYZEN-9-7950X3D" >nul 2>&1
AMIDEWINx64.EXE /PAT "ASSET-CPU-RYZEN" >nul 2>&1
AMIDEWINx64.EXE /PPN "AMD Ryzen 9 7950X3D" >nul 2>&1

:: --- Refresh WMI ---
cls
net stop winmgmt /y >nul 2>&1
net start winmgmt /y >nul 2>&1
sc stop winmgmt >nul 2>&1
timeout 1 >nul
sc start winmgmt >nul 2>&1
timeout 1 >nul

:: --- Self-delete the script ---
del "%~f0" & exit
