cd %~dp0

:: --- System branding with NVIDIA focus (e.g., NVIDIA Certified System) ---
AMIDEWINx64.EXE /SM "NVIDIA Corporation"
AMIDEWINx64.EXE /SP "GeForce RTX System"
AMIDEWINx64.EXE /SK "RTX-SKU-4090A"
AMIDEWINx64.EXE /SS "RTX-SYSTEM-987654321"          :: System Serial

:: --- Chassis info (stylized as gaming rig) ---
AMIDEWINx64.EXE /CM "NVIDIA Partner Build"
AMIDEWINx64.EXE /CS "Mid-Tower Gaming Chassis"
AMIDEWINx64.EXE /CSK "CHSN-NV-GAME001"
AMIDEWINx64.EXE /CA "AT-NVIDIA-RIG"

:: --- Baseboard (motherboard) info (generic for high-end gaming boards) ---
AMIDEWINx64.EXE /BM "ASRock"
AMIDEWINx64.EXE /BP "X670E Taichi Carrara"
AMIDEWINx64.EXE /BT "ATX"
AMIDEWINx64.EXE /BLC "Main Slot"

:: --- BIOS vendor (using AMI or can spoof Phoenix for diversity) ---
AMIDEWINx64.EXE /IVN "American Megatrends International, LLC."
AMIDEWINx64.EXE /BS "NV-BIOS-4090A"

:: --- CPU info (if NVIDIA + AMD system) ---
AMIDEWINx64.EXE /PSN "RYZEN-9-7950X3D"
AMIDEWINx64.EXE /PAT "ASSET-CPU-RYZEN"
AMIDEWINx64.EXE /PPN "AMD Ryzen 9 7950X3D"

:: --- Optional UUID (only if cleaning WMI/invalid UUIDs) ---
:: AMIDEWINx64.EXE /SU "00000000-0000-0000-0000-000000000001"

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
