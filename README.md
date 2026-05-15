# Rename-Computer.ps1

This PowerShell script automatically renames a Windows computer based on its BIOS serial number, following a standard naming convention.

## Features
- Retrieves the BIOS serial number
- Sets the computer name to `M365` plus the last 7 characters of the serial number (max 15 chars)
- Handles errors if the serial number cannot be retrieved
- Ensures the new name is valid for Windows

## How to Use
1. Open PowerShell **as Administrator**.
2. Run the script:
   ```powershell
   .\rename-computer.ps1
   ```
3. The computer will be renamed as described above.
4. **Restart** the computer to apply the new name.

## Requirements
- Windows PowerShell 5.1 or later
- Administrator privileges

## License
This project is licensed under the MIT License. See the LICENSE file for details.
