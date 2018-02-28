################################################################################
##  File:  Install-Chrome.ps1
##  Team:  Automated Testing
##  Desc:  Install Google Chrome
################################################################################

$temp_install_dir = 'C:\Windows\Installer'
New-Item -Path $temp_install_dir -ItemType Directory -Force

choco install googlechrome --ignore-checksums

New-Item -Path "HKLM:\SOFTWARE\Policies\Google\Update" -Force
New-ItemProperty "HKLM:\SOFTWARE\Policies\Google\Update" -Name "AutoUpdateCheckPeriodMinutes" -Value 00000000 -Force
New-Item -Path "HKLM:\SOFTWARE\Policies\Google\Chrome" -Force
New-ItemProperty "HKLM:\SOFTWARE\Policies\Google\Chrome" -Name "DefaultBrowserSettingEnabled" -Value 00000000 -Force