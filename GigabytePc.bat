cd %~dp0

:: --- Gigabyte System Branding ---
AMIDEWINx64.EXE /SM "Gigabyte Technology"
AMIDEWINx64.EXE /SP "Gigabyte AORUS 15G"
AMIDEWINx64.EXE /SK "DG.AORUS.001"
AMIDEWINx64.EXE /SS "S/N: NQ123AA012345678901234"   :: Serial, format matches Gigabyte standard

:: --- Chassis Info (Gaming Laptop Style) ---
AMIDEWINx64.EXE /CM "Gigabyte"
AMIDEWINx64.EXE /CS "Gaming Laptop Chassis"
AMIDEWINx64.EXE /CSK "LTSN-AORUS-600"
AMIDEWINx64.EXE /CA "AT-GIGABYTE-GAMING-LAPTOP"

:: --- Motherboard Info (matches Gigabyte laptop boards) ---
AMIDEWINx64.EXE /BM "Gigabyte"
AMIDEWINx64.EXE /BP "AORUS-600"
AMIDEWINx64.EXE /BT "Laptop"
AMIDEWINx64.EXE /BLC "Slot 1"

:: --- BIOS Info (AMI vendor used by Gigabyte) ---
AMIDEWINx64.EXE /IVN "American Megatrends Inc."

:: --- Optional CPU Info (common for Gigabyte laptops with Intel processors) ---
AMIDEWINx64.EXE /PSN "Intel(R) Core(TM) i7-10870H"
AMIDEWINx64.EXE /PAT "CPU-ASSET-TAG-10870H"
AMIDEWINx64.EXE /PPN "Intel Core i7-10870H"

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
