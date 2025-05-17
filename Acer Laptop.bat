cd %~dp0

:: --- Acer System Branding ---
AMIDEWINx64.EXE /SM "Acer Incorporated"
AMIDEWINx64.EXE /SP "Acer Predator Helios 300"
AMIDEWINx64.EXE /SK "DG.E3AKQ.002"
AMIDEWINx64.EXE /SS "S/N: NX987AA001234567890123"   :: Serial, format matches Acer standard

:: --- Chassis Info (Laptop Style) ---
AMIDEWINx64.EXE /CM "Acer"
AMIDEWINx64.EXE /CS "Gaming Laptop Chassis"
AMIDEWINx64.EXE /CSK "LTSN-PH3-500"
AMIDEWINx64.EXE /CA "AT-ACER-GAMING-LAPTOP"

:: --- Motherboard Info (matches Acer laptop boards) ---
AMIDEWINx64.EXE /BM "Acer"
AMIDEWINx64.EXE /BP "PH3-500"
AMIDEWINx64.EXE /BT "Laptop"
AMIDEWINx64.EXE /BLC "Slot 1"

:: --- BIOS Info (AMI vendor used by Acer) ---
AMIDEWINx64.EXE /IVN "American Megatrends Inc."

:: --- Optional CPU Info (common for Acer gaming laptops with Intel processors) ---
AMIDEWINx64.EXE /PSN "Intel(R) Core(TM) i7-11800H"
AMIDEWINx64.EXE /PAT "CPU-ASSET-TAG-11800H"
AMIDEWINx64.EXE /PPN "Intel Core i7-11800H"

:: --- Refresh WMI for updated system info ---
cls
net stop winmgmt /y
net start winmgmt /y
sc stop winmgmt
timeout 1
sc start winmgmt
timeout 1
exit
