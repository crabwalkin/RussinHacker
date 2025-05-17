cd %~dp0

:: --- Acer System Branding ---
AMIDEWINx64.EXE /SM "Acer Incorporated"
AMIDEWINx64.EXE /SP "Predator Orion 3000"
AMIDEWINx64.EXE /SK "DG.E2UEQ.001"
AMIDEWINx64.EXE /SS "S/N: NX123AA001987654321600"   :: Serial, format matches Acer standard

:: --- Chassis Info (Gaming Desktop Style) ---
AMIDEWINx64.EXE /CM "Acer"
AMIDEWINx64.EXE /CS "Gaming Desktop Chassis"
AMIDEWINx64.EXE /CSK "CHSN-PO3-640"
AMIDEWINx64.EXE /CA "AT-ACER-GAMING-RIG"

:: --- Motherboard Info (matches Acer OEM desktop boards) ---
AMIDEWINx64.EXE /BM "Acer"
AMIDEWINx64.EXE /BP "PO3-640"
AMIDEWINx64.EXE /BT "ATX"
AMIDEWINx64.EXE /BLC "Slot 1"

:: --- BIOS Info (AMI vendor used by Acer) ---
AMIDEWINx64.EXE /IVN "American Megatrends Inc."

:: --- Optional CPU Info (common for Acer desktops with NVIDIA GPUs) ---
AMIDEWINx64.EXE /PSN "Intel(R) Core(TM) i7-12700F"
AMIDEWINx64.EXE /PAT "CPU-ASSET-TAG-12700F"
AMIDEWINx64.EXE /PPN "Intel Core i7-12700F"

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
