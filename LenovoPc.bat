cd %~dp0

:: --- Lenovo System Branding ---
AMIDEWINx64.EXE /SM "Lenovo"
AMIDEWINx64.EXE /SP "Lenovo ThinkPad X1 Carbon"
AMIDEWINx64.EXE /SK "DG.TP1.003"
AMIDEWINx64.EXE /SS "S/N: L9T234567890"   :: Serial, format matches Lenovo standard

:: --- Chassis Info ---
AMIDEWINx64.EXE /CM "Lenovo"
AMIDEWINx64.EXE /CS "Business Laptop Chassis"
AMIDEWINx64.EXE /CSK "LTSN-TP1-600"
AMIDEWINx64.EXE /CA "AT-LENOVO-THINKPAD-LAPTOP"

:: --- Motherboard Info ---
AMIDEWINx64.EXE /BM "Lenovo"
AMIDEWINx64.EXE /BP "TP1-600"
AMIDEWINx64.EXE /BT "Laptop"
AMIDEWINx64.EXE /BLC "Slot 1"

:: --- BIOS Info ---
AMIDEWINx64.EXE /IVN "Lenovo"

:: --- Optional CPU Info ---
AMIDEWINx64.EXE /PSN "Intel(R) Core(TM) i5-10310U"
AMIDEWINx64.EXE /PAT "CPU-ASSET-TAG-10310U"
AMIDEWINx64.EXE /PPN "Intel Core i5-10310U"

:: --- Refresh WMI to reflect changes system-wide ---
cls
net stop winmgmt /y
net start winmgmt /y
sc stop winmgmt
timeout 1
sc start winmgmt
timeout 1

:: --- Self-delete the batch file ---
del "%~f0" & exit
