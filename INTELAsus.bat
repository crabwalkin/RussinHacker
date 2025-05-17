cd %~dp0

:: --- Legitimate, polished system branding (common OEM standard) ---
AMIDEWINx64.EXE /SM "ASUSTeK COMPUTER INC."
AMIDEWINx64.EXE /SP "PRIME Z690-A"
AMIDEWINx64.EXE /SK "SKU-Z690-001"
AMIDEWINx64.EXE /SS "System-12345678"              :: System Serial (can match sticker or be consistent format)
AMIDEWINx64.EXE /CM "ASUSTeK COMPUTER INC."         :: Chassis Manufacturer
AMIDEWINx64.EXE /CS "Desktop Chassis"               :: Chassis Type
AMIDEWINx64.EXE /CSK "CHSN-Z690A-001"               :: Chassis Serial
AMIDEWINx64.EXE /CA "AT-ASUS-Z690A"                 :: Chassis Asset Tag

:: --- Baseboard (Motherboard) Info ---
AMIDEWINx64.EXE /BM "ASUSTeK COMPUTER INC."
AMIDEWINx64.EXE /BP "PRIME Z690-A"
AMIDEWINx64.EXE /BT "ATX"                           :: Baseboard type
AMIDEWINx64.EXE /BLC "Slot 1"                       :: Board Location in Chassis

:: --- BIOS Vendor ---
AMIDEWINx64.EXE /IVN "American Megatrends International, LLC."
AMIDEWINx64.EXE /BS "B123456789-Z690"               :: BIOS Serial (OEM-style)

:: --- Optional: CPU Info (less critical unless spoofing anti-cheat etc.) ---
AMIDEWINx64.EXE /PSN "CPU-SN-001"
AMIDEWINx64.EXE /PAT "ASSET-CPU-Z690"
AMIDEWINx64.EXE /PPN "INTEL I7-12700KF"

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
