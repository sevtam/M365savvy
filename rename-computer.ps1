# MIT License
#
# Copyright (c) 2026 Sevag Tamoukian
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
# ---
# How to Use:
# 1. Open PowerShell as Administrator.
# 2. Run this script: .\rename-computer.ps1
# 3. The computer will be renamed to 'M365' plus the last 7 characters of the BIOS serial number (max 15 chars).
# 4. Restart the computer to apply the new name.
#
$serialNumber = (Get-CimInstance -ClassName Win32_BIOS | Select-Object -ExpandProperty SerialNumber)

$hostname = "M365" + $serialNumber.Substring($serialNumber.Length - 7)

# Check if serial number was retrieved
if ([string]::IsNullOrWhiteSpace($serialNumber)) {
	Write-Error "Could not retrieve BIOS serial number. Computer name will not be changed."
	exit 1
}

# Build hostname using last 7 characters of serial number (if available)
if ($serialNumber.Length -ge 7) {
	$hostname = "M365" + $serialNumber.Substring($serialNumber.Length - 7)
} else {
	$hostname = "M365" + $serialNumber
}

# Ensure hostname does not exceed 15 characters
if ($hostname.Length -gt 15) {
	$hostname = $hostname.Substring(0, 15)
}

# Rename the computer
Rename-Computer -NewName $hostname -Force > $null