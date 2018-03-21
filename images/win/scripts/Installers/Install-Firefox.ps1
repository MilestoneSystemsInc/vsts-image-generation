################################################################################
##  File:  Install-Firefox.ps1
##  Team:  Automated Testing
##  Desc:  Install Mozilla Firefox
################################################################################

$version = "58.0.2"
choco install firefox --version $version

$path = '{0}\Program Files\Mozilla Firefox\' -f $env:SystemDrive;
New-Item -path $path -Name 'mozilla.cfg' -Value '//
pref("browser.shell.checkDefaultBrowser", false);
pref("app.update.enabled", false);' -ItemType file -force

$path = '{0}\Program Files\Mozilla Firefox\defaults\pref\' -f $env:SystemDrive;
New-Item -path $path -Name 'local-settings.js' -Value 'pref("general.config.obscure_value", 0);
pref("general.config.filename", "mozilla.cfg");' -ItemType file -force