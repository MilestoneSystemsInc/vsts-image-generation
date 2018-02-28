################################################################################
##  File:  Validate-Ruby.ps1
##  Team:  CI-X
##  Desc:  Validate Ruby
################################################################################

if (Get-Command -Name 'ruby')
{
    Write-Host "$(ruby.exe -v) is on the path."
}
else
{
    Write-Host "Ruby.exe is not on the path."
    exit 1
}

# Add details of available versions in Markdown
$SoftwareName = "Ruby (x64)"
$Description = @"
#### 2.3.3

_Environment:_
* RUBYOPT: -Eutf-8
* RUBY_2_3_X64: root directory of the Ruby 2.3.3 installation

#### 2.4.3-1

_Environment:_
* RUBYOPT: -Eutf-8
* PATH: contains the location of ruby.exe version 2.4.3-1
* RUBY_2_4_X64: root directory of the Ruby 2.4.3-1 installation

#### 2.5.0-1

_Environment:_
* RUBYOPT: -Eutf-8
* RUBY_2_5_X64: root directory of the Ruby 2.5.0-1 installation
"@

Add-SoftwareDetailsToMarkdown -SoftwareName $SoftwareName -DescriptionMarkdown $Description
