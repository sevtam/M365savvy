# SPDX-License-Identifier: MIT
# Copyright (c) 2026 Sevag Tamoukian
#
# This script is licensed under the MIT License.
# See the LICENSE file in the repository root for full license text.
#
# How to Use:
# 1. Open PowerShell as Administrator.
# 2. Run this script: .\rename-computer.ps1
# 3. The computer will be renamed to 'LPT' plus the last 7 characters of the BIOS serial number (max 15 chars).
# 4. Restart the computer to apply the new name.
#
# ---
# Customization:
# To change the computer name prefix, edit the lines with "LPT" below.
# For example, replace "LPT" with your desired prefix:
#     $hostname = "YOURPREFIX" + $serialNumber.Substring($serialNumber.Length - 7)
# Remember: the new computer name (prefix + serial number part) cannot exceed 15 characters.
# ---

$serialNumber = (Get-CimInstance -ClassName Win32_BIOS | Select-Object -ExpandProperty SerialNumber)

$hostname = "LPT" + $serialNumber.Substring($serialNumber.Length - 7)

# Check if serial number was retrieved
if ([string]::IsNullOrWhiteSpace($serialNumber)) {
	Write-Error "Could not retrieve BIOS serial number. Computer name will not be changed."
	exit 1
}

# Build hostname using last 7 characters of serial number (if available)
if ($serialNumber.Length -ge 7) {
	$hostname = "LPT" + $serialNumber.Substring($serialNumber.Length - 7)
} else {
	$hostname = "LPT" + $serialNumber
}

# Ensure hostname does not exceed 15 characters
if ($hostname.Length -gt 15) {
	$hostname = $hostname.Substring(0, 15)
}

# Rename the computer
Rename-Computer -NewName $hostname -Force > $null

