# Rename-Computer.ps1

This PowerShell script automatically renames a Windows computer based on its BIOS serial number, following a standard naming convention.

## Features
- Retrieves the BIOS serial number
- Sets the computer name to `LPT` plus the last 7 characters of the serial number (max 15 chars)
- Handles errors if the serial number cannot be retrieved
- Ensures the new name is valid for Windows

## How to Use
1. Open PowerShell **as Administrator**.
2. Run the script:
   ```powershell
   .\rename-computer_v1.2.ps1
   ```
3. The computer will be renamed as described above.
4. **Restart** the computer to apply the new name.

## Customizing the Naming Convention

By default, the script sets the computer name to `LPT` plus the last 7 characters of the BIOS serial number.
To change the naming convention:

1. Open `rename-computer_v1.2.ps1` in a text editor.
2. Locate the line where the new computer name is set:
   ```powershell
   $computerName = "LPT" + $serialNumber.Substring($serialNumber.Length - 7)
   ```
3. Modify this line to fit your preferred naming convention.
   - For example, to use a prefix of `PC-` and the first 5 characters of the serial number:
     ```powershell
     $computerName = "PC-" + $serialNumber.Substring(0,5)
     ```
   - Make sure the computer name follows Windows naming rules (maximum 15 characters, no special symbols).
4. Save the script and run it as described above.

## Requirements
- Windows PowerShell 5.1 or later
- Administrator privileges

## License
This project is licensed under the MIT License. See the LICENSE file for details.
