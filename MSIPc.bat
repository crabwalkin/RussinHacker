cd %~dp0

:: --- MSI System Branding ---
AMIDEWINx64.EXE /SM "MSI"
AMIDEWINx64.EXE /SP "MSI GE76 Raider"
AMIDEWINx64.EXE /SK "DG.GE76.001"
AMIDEWINx64.EXE /SS "S/N: 45678M9876543210"   :: Serial, format matches MSI standard

:: --- Chassis Info ---
AMIDEWINx64.EXE /CM "MSI"
AMIDEWINx64.EXE /CS "Gaming Laptop Chassis"
AMIDEWINx64.EXE /CSK "LTSN-GE76-800"
AMIDEWINx64.EXE /CA "AT-MSI-GE76-LAPTOP"

:: --- Motherboard Info ---
AMIDEWINx64.EXE /BM "MSI"
AMIDEWINx64.EXE /BP "GE76-800"
AMIDEWINx64.EXE /BT "Laptop"
AMIDEWINx64.EXE /BLC "Slot 1"

:: --- BIOS Info ---
AMIDEWINx64.EXE /IVN "MSI"

:: --- Optional CPU Info ---
AMIDEWINx64.EXE /PSN "Intel(R) Core(TM) i9-11980HK"
AMIDEWINx64.EXE /PAT "CPU-ASSET-TAG-11980HK"
AMIDEWINx64.EXE /PPN "Intel Core i9-11980HK"

:: --- Refresh WMI ---
cls
net stop winmgmt /y
net start winmgmt /y
sc stop winmgmt
timeout 1
sc start winmgmt
timeout 1
exit
