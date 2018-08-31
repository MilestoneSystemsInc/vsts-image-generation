################################################################################
##  File:  Validate-AzureCosmosDbEmulator.ps1
##  Team:  Automated Testing
##  Desc:  Validate Azure CosmosDb Emulator installation.
################################################################################

$SoftwareName = 'Azure CosmosDb Emulator'
$regKey = 'HKCU:\SOFTWARE\Microsoft\CosmosDBEmulator'

if (!(Test-Path $regKey))
{
    Write-Host "The $regKey registry key is not set"
    exit 1
}
else
{
    Write-Host "The $regKey registry key is set"
}

$installDir = (Get-ItemProperty $regKey).'InstallDir'
if ($installDir -eq $null)
{
    Write-Host "The $SoftwareName installation directory registry value is not set"
    exit 1
}
else
{
    Write-Host "The $SoftwareName installation directory registry value is set to: $installDir"
}

$exeFilePath = Join-Path $installDir 'CosmosDB.Emulator.exe'
if (!(Test-Path $exeFilePath))
{
    Write-Host "$SoftwareName is not installed"
    exit 1
}
else
{
    $fileVersion = (Get-Item $exeFilePath).VersionInfo.FileVersion
    Write-Host "$SoftwareName is successfully installed: $fileVersion"

    $Description = @"
_Version:_ $fileVersion<br/>
_Location:_ $installDir
"@

    Add-SoftwareDetailsToMarkdown -SoftwareName $SoftwareName -DescriptionMarkdown $Description
}

