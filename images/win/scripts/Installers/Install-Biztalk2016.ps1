################################################################################
##  File:  Install-BizTalk2016.ps1
##  Team:  Black Marble
##  Desc:  Install BizTalk 2016. Requires VS2015 to be installed
################################################################################

$exitCode = -1

try
{
    # As there seems to be no MS store for this file we keep a ZIP'd copy on an internally
    # accessible share. We chose a ZIP as opposed to the ISO to reduce size and unpack
    # complexity

    $InstallerURI = 'https://arbiter.blackmarble.co.uk/BizTalk\BiztalkServer2016.zip'
    $InstallerName = 'BiztalkServer2016.zip'
    $ArgumentList = ('/ADDLOCAL ALL', '/quiet', '/norestart' )

    $folder = "${env:Temp}\BizTalk"
    Write-Host "Downloading $InstallerNam to folder $folder"
    $zipfile = "${env:Temp}\$InstallerName"

    Invoke-WebRequest -Uri $InstallerURI -OutFile $zipfile

    Write-Host "Unzipping the file"
    Expand-Archive -Path $zipfile -DestinationPath $folder -Force

    Write-Host "Starting Install $InstallerName..."
    $process = Start-Process -FilePath "$folder\setup.exe" -ArgumentList $ArgumentList -Wait -PassThru
    $exitCode = $process.ExitCode

    if ($exitCode -eq 0 -or $exitCode -eq 3010)
    {
        Write-Host -Object 'Installation successful'
        return $exitCode
    }
    else
    {
        Write-Host -Object "Non zero exit code returned by the installation process : $exitCode."
        return $exitCode
    }
}
catch
{
    Write-Host -Object "Failed to install the Executable $Name"
    Write-Host -Object $_.Exception.Message
    return -1
}