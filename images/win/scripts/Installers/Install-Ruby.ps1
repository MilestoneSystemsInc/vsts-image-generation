################################################################################
##  File:  Install-Ruby.ps1
##  Team:  CI-X
##  Desc:  Install Ruby
################################################################################

Import-Module -Name ImageHelpers -Force

# This function installs the specified version of Ruby and sets associated environment variables
function Install-RubyVersion
{
    Param
    (
        [String]$rubyArch,
        [String]$rubyVersion,
        [Boolean]$addToDefaultPath
    )

    # Form the installer download URL based on Ruby version
    if ($rubyVersion -match '^2\.3\..*')
    {
        $installerUri = "https://dl.bintray.com/oneclick/rubyinstaller/rubyinstaller-$rubyVersion-$rubyArch.exe"
    }
    else
    {
        $installerUri = "https://github.com/oneclick/rubyinstaller2/releases/download/rubyinstaller-$rubyVersion/rubyinstaller-$rubyVersion-$rubyArch.exe"
    }

    # Download and install
    $installDirectory = "C:\Ruby$rubyVersion-$rubyArch"
    $installerName = "rubyinstaller-$rubyVersion-$rubyArch.exe"
    $argumentList = ("/dir=$installDirectory", "/verysilent", "/tasks=nomodpath,noassocfiles,noridkinstall,defaultutf8")
    Install-EXE -Url $installerUri -Name $installerName -ArgumentList $argumentList | Out-Null

    # Add to default path?
    if ($addToDefaultPath)
    {
        Write-Host "Adding $installDirectory\bin to the default path..."
        Add-MachinePathItem "$installDirectory\bin" | Out-Null
    }

    # Done
    return $installDirectory
}

# Speed up Invoke-WebRequest
$ProgressPreference = 'SilentlyContinue'

# GitHub requires TLS 1.2 instead of the Invoke-WebRequest default of TLS 1.0
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Install Ruby 2.3.x
$installDirectory = Install-RubyVersion -rubyArch 'x64' -rubyVersion '2.3.3' -addToDefaultPath $False
setx RUBY_2_3_X64 "$installDirectory" /M

# Install Ruby 2.4.x (default version in path)
$installDirectory = Install-RubyVersion -rubyArch 'x64' -rubyVersion '2.4.3-1' -addToDefaultPath $True
setx RUBY_2_4_X64 "$installDirectory" /M

# Install Ruby 2.5.x
$installDirectory = Install-RubyVersion -rubyArch 'x64' -rubyVersion '2.5.0-1' -addToDefaultPath $False
setx RUBY_2_5_X64 "$installDirectory" /M

# Done
exit 0
