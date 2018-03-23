################################################################################
##  File:  Install-BiztalkDeploymentFramework.ps1
##  Team:  Automated Testing
##  Desc:  Install Biztalk DeploymentFramework
################################################################################

# Can't us the standard version as need extra attribute
#Import-Module -Name ImageHelpers -Force
function Install-MSI
{
    Param
    (
        [String]$MsiUrl,
        [String]$MsiName
    )

    $exitCode = -1

    try
    {
        Write-Host "Downloading $MsiName..."
        $FilePath = "${env:Temp}\$MsiName"

        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        Invoke-WebRequest -Uri $MsiUrl -OutFile $FilePath

        $Arguments = ('/i', $FilePath, '/QN', '/norestart' )

        Write-Host "Starting Install $MsiName..."
        $process = Start-Process -FilePath msiexec.exe -ArgumentList $Arguments -Wait -PassThru
        $exitCode = $process.ExitCode

        if ($exitCode -eq 0 -or $exitCode -eq 3010)
        {
            Write-Host -Object 'Installation successful'
            return $exitCode
        }
        else
        {
            Write-Host -Object "Non zero exit code returned by the installation process : $exitCode."
            exit $exitCode
        }
    }
    catch
    {
        Write-Host -Object "Failed to install the MSI $MsiName"
        Write-Host -Object $_.Exception.Message
        exit -1
    }
}



Install-MSI -MsiUrl "https://github.com/BTDF/DeploymentFramework/releases/download/v5.7.0/DeploymentFrameworkForBizTalkV5_7.msi" -MsiName "DeploymentFrameworkForBizTalkV5_7.msi"
