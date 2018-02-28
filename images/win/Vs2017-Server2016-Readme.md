# VSTS Hosted VS2017 image

[Version 1801.1](https://github.com/Microsoft/vsts-image-generation/edit/releases/1801.1/images/win/Vs2017-Server2016-Readme.md)
Built Tuesday January 30, 2018

The following software is installed on machines in the VSTS **Hosted VS2017** pool.

Components marked with **\*** have been upgraded since the previous version of the image.

## Visual Studio 2017 Enterprise *

_Version:_ 15.5.6+27130.2027<br/>
_Location:_ C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise

The following workloads including required and recommended components are installed with Visual Studio 2017:

* Universal Windows Platform development
* .NET desktop development
* Desktop development with C++
* ASP.NET and web development
* Azure development
* Node.js development
* Data storage and processing
* Data science and analytical applications *
* Game development with Unity *
* Linux development with C++ *
* Game development with C++ *
* Mobile development with C++ *
* Office/SharePoint development
* Mobile development with .NET
* .NET Core cross-platform development
* Visual Studio extension development *
* Python development *
* Mobile development with JavaScript *

In addition the following optional components are installed:

* Microsoft.Net.Component.4.6.2.SDK
* Microsoft.Net.Component.4.6.2.TargetingPack
* Microsoft.Net.Component.4.7.SDK
* Microsoft.Net.Component.4.7.TargetingPack
* Microsoft.Net.ComponentGroup.4.6.2.DeveloperTools
* Microsoft.Net.ComponentGroup.4.7.DeveloperTools
* Microsoft.Net.Core.Component.SDK.1x
* Microsoft.NetCore.1x.ComponentGroup.Web
* Microsoft.VisualStudio.Component.Azure.Storage.AzCopy
* Microsoft.VisualStudio.Component.PowerShell.Tools
* Microsoft.VisualStudio.Component.VC.140
* Component.Dotfuscator
* Microsoft.VisualStudio.Component.VC.ATL
* Microsoft.VisualStudio.Component.VC.ATLMFC
* Microsoft.VisualStudio.Component.VC.ClangC2
* Microsoft.VisualStudio.Component.VC.CLI.Support
* Microsoft.VisualStudio.Component.VC.Modules.x86.x64
* Microsoft.VisualStudio.Component.Windows10SDK.10240
* Microsoft.VisualStudio.Component.Windows10SDK.10586
* Microsoft.VisualStudio.Component.Windows10SDK.14393
* Microsoft.VisualStudio.Component.Windows10SDK.15063.Desktop
* Component.Unreal
* Component.Unreal.Android
* Component.Android.SDK23
* Microsoft.VisualStudio.Component.TestTools.WebLoadTest
* Microsoft.VisualStudio.Web.Mvc4.ComponentGroup
* Component.CPython2.x64
* Microsoft.Component.PythonTools.UWP
* Microsoft.Component.VC.Runtime.OSSupport
* Microsoft.VisualStudio.Component.VC.Tools.ARM
* Microsoft.VisualStudio.ComponentGroup.UWP.VC
* Microsoft.VisualStudio.Component.VSSDK
* Microsoft.VisualStudio.Component.LinqToSql
* Microsoft.VisualStudio.Component.TestTools.CodedUITest
* Microsoft.VisualStudio.Component.TestTools.Core
* Microsoft.VisualStudio.Component.TypeScript.2.0
* Microsoft.VisualStudio.Component.TypeScript.2.1
* Microsoft.VisualStudio.Component.TypeScript.2.2
* Microsoft.VisualStudio.Component.VC.Tools.ARM64
* Microsoft.VisualStudio.Component.Windows10SDK.16299.Desktop.arm
* Microsoft.VisualStudio.Component.DslTools
* Microsoft.VisualStudio.Component.Windows81SDK *
* Microsoft.VisualStudio.Component.WinXP *
* Microsoft.VisualStudio.ComponentGroup.NativeDesktop.Win81 *
* Microsoft.VisualStudio.ComponentGroup.NativeDesktop.WinXP *
* Microsoft.Component.Blend.SDK.WPF *
* Microsoft.VisualStudio.ComponentGroup.ArchitectureTools.Managed

## .NET 4.7.1

_Version:_ 4.7.02558

## SQL Server Data Tools for VS 2017

_Version:_ 15.1.61707.200<br/>
_SQL Server Data Tier Application Framework (x64) Version:_  14.0.3757.2

## SQL Server BI Tools for VS 2017

_Version:_ 14.0.1012.227

## SQL PowerShell Modules *

_Version:_ 1.0

## WIX Tools

_Toolset Version:_ 3.11<br/>
_WIX Toolset Studio 2017 Extension Version:_ 0.9.21.62588<br/>
_Environment:_
* WIX: Installation root of WIX

## .NET Core

The following runtimes and SDKs are installed:

_Environment:_
* PATH: contains location of dotnet.exe

_SDK:_
* 2.1.4 C:\Program Files\dotnet\sdk\2.1.4
* 2.1.2 C:\Program Files\dotnet\sdk\2.1.2
* 2.0.3 C:\Program Files\dotnet\sdk\2.0.3
* 2.0.2 C:\Program Files\dotnet\sdk\2.0.2
* 2.0.0 C:\Program Files\dotnet\sdk\2.0.0
* 1.1.5 C:\Program Files\dotnet\sdk\1.1.5
* 1.1.4 C:\Program Files\dotnet\sdk\1.1.4
* 1.0.4 C:\Program Files\dotnet\sdk\1.0.4
* 1.0.1 C:\Program Files\dotnet\sdk\1.0.1

_Runtime:_
* 2.0.5 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.0.5
* 2.0.3 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.0.3
* 2.0.0 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.0.0
* 1.1.5 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.1.5
* 1.1.4 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.1.4
* 1.1.2 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.1.2
* 1.1.1 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.1.1
* 1.0.8 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.0.8
* 1.0.7 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.0.7
* 1.0.5 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.0.5
* 1.0.4 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.0.4

## Powershell

_Version:_ 5.1.1715

## Azure/AzureRM Powershell modules

#### 2.1.0

This version is installed and is available via `Get-Module -ListAvailable`

#### 3.8.0

This version is saved but not installed.<br/>
_Location:_ C:\Modules\azure_3.8.0 and C:\Modules\azurerm_3.8.0

#### 4.2.1

This version is saved but not installed.<br/>
_Location:_ C:\Modules\azure_4.2.1 and C:\Modules\azurerm_4.2.1

#### 5.1.1
This version is saved by not installed
_Location:_ C:\Modules\azure_5.1.1 and C:\Modules\azurerm_5.1.1

## Azure CLI *

_Version:_ 2.0.25<br/>
_Environment:_
* PATH: contains location of az.cmd

## Azure Service Fabric *

_SDK Version:_ 3.0.456<br/>
_Runtime Version:_ 6.1.456

## Git

_Version:_ 2.15.0<br/>
_Environment:_
* PATH: contains location of git.exe

## Git LFS

_Version:_ 2.3.4<br/>
_Environment:_
* PATH: contains location of git-lfs.exe
* GIT_LFS_PATH: location of git-lfs.exe

## Subversion

_Version:_ 1.8.15<br/>
_Environment:_
* PATH: contains location of svn.exe

## Go (x64)
#### 1.9.4

_Environment:_
* GOROOT_1_9_X64: root directory of the Go 1.9.4 installation

#### 1.10

_Environment:_
* PATH: contains the location of go.exe version 1.10
* GOROOT: root directory of the Go 1.10 installation
* GOROOT_1_10_X64: root directory of the Go 1.10 installation

## Node.js

_Version:_ 8.9.1<br/>
_Environment:_
* PATH: contains location of node.exe<br/>

> Note: You can install and use another version of Node on the hosted agents using the [Node tool installer](https://docs.microsoft.com/en-us/vsts/build-release/tasks/tool/node-js) task.

## npm

_Version:_ 5.5.1<br/>
_Environment:_
* PATH: contains location of npm.cmd

## Docker *

_Version:_ 17.06.2-ee-6<br/>
_Environment:_
* PATH: contains location of docker.exe

The following container images have been cached:
* microsoft/windowsservercore:latest (sha256:ebdf8f069e8941803a19bb3da4d70070c9d3b2f77c38476a9132022bab6e59a0)
* microsoft/nanoserver:latest (sha256:3d2948c5af9f4bece59b13f199f5bec59d6dc4930fb15aa9b6a223d2ea8d8471)
* microsoft/aspnetcore-build:1.0-2.0  (sha256:84686dd5bc596df1e81f106937b4aaa44af7d307a2d3f29610a418cd6ede1a8d)
* microsoft/aspnet:latest (sha256:7f671d072c49a4ebfce342b492a1274cfb2e5fac5a58d5e604a4e283fb791496)
* microsoft/dotnet-framework:latest (sha256:54ab0e9ed41614f7fdec081734c8f5d8228bb0778252fdf7f71a78ff48be3549)

## Docker-compose *

_Version:_ 1.18.0<br/>
_Environment:_
* PATH: contains location of docker-compose.exe

## Java Development Kit

#### 1.8.0.162 *

_Environment:_
* JAVA_HOME: location of JDK
* PATH: contains bin folder of JDK

#### 1.9.0.1

_Location:_ C:\Program Files\Java\jdk-9.0.1\

## Ant

_Version:_ 1.10.1<br/>
_Environment:_
* PATH: contains location of ant.cmd
* ANT_HOME: location of ant.cmd
* COBERTURA_HOME: location of cobertura-2.1.1.jar

## Maven

_Version:_ 3.5.2<br/>
_Environment:_
* PATH: contains location of mvn.bat
* M2_HOME: Maven installation root

## Gradle *
_Version:_ 4.3.0</br/>
_Environment:_
* PATH: contains location of gradle

## Cmake

_Version:_ 3.9.4<br/>
_Environment:_
* PATH: contains location of cmake.exe

## Python (64 bit) *

#### 3.6.3
_Environment:_
* PATH: contains location of python.exe

#### 2.7.13

_Location:_ C:\Python27amd64

## Android SDK Build Tools

### 27.0.1

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\27.0.1

#### 26.0.3

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\26.0.3

#### 26.0.2

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\26.0.2

#### 25.0.2

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\25.0.2

#### 25.0.1

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\25.0.1

#### 25.0.0

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\25.0.0

##### 24.0.3

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\24.0.3

#### <span style="color:#ED2836">24.0.2</span>

_Warning: This version will be removed in a future update of the image.<br/>_
_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\24.0.2

#### <span style="color:#ED2836">24.0.1</span>

_Warning: This version will be removed in a future update of the image.<br/>_
_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\24.0.1

#### <span style="color:#ED2836">24.0.0</span>

_Warning: This version will be removed in a future update of the image.<br/>_
_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\24.0.0

#### 23.0.3

_Warning: This version will be removed in a future update of the image.<br/>_
_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\23.0.3

#### <span style="color:#ED2836">23.0.2</span>

_Warning: This version will be removed in a future update of the image.<br/>_
_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\23.0.2

#### <span style="color:#ED2836">23.0.1</span>

_Warning: This version will be removed in a future update of the image.<br/>_
_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\23.0.1

#### <span style="color:#ED2836">22.0.1</span>

_Warning: This version will be removed in a future update of the image.<br/>_
_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\22.0.1

#### <span style="color:#ED2836">21.1.2</span>

_Warning: This version will be removed in a future update of the image.<br/>_
_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\21.1.2

#### <span style="color:#ED2836">20.0.0</span>

_Warning: This version will be removed in a future update of the image.<br/>_
_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\20.0.0

#### <span style="color:#ED2836">19.1.0</span>

_Warning: This version will be removed in a future update of the image.<br/>_
_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\19.1.0

## Android SDK Platforms

#### 8.1.0 (API 27)

_Location:_ C:\Program Files (x86)\Android\android-sdk\platforms\android-27
#### 8.0.0 (API 26)

_Location:_ C:\Program Files (x86)\Android\android-sdk\platforms\android-26

#### 7.1.1 (API 25)

_Location:_ C:\Program Files (x86)\Android\android-sdk\platforms\android-25

#### 7.0 (API 24)

_Location:_ C:\Program Files (x86)\Android\android-sdk\platforms\android-24

#### 6.0 (API 23)

_Location:_ C:\Program Files (x86)\Android\android-sdk\platforms\android-23

#### <span style="color:#ED2836">5.1.1 (API 22)</span>

_Warning: This version will be removed in a future update of the image.<br/>_
_Location:_ C:\Program Files (x86)\Android\android-sdk\platforms\android-22

#### <span style="color:#ED2836">5.0.1 (API 21)</span>

_Warning: This version will be removed in a future update of the image.<br/>_
_Location:_ C:\Program Files (x86)\Android\android-sdk\platforms\android-21

#### <span style="color:#ED2836">4.4.2 (API 19)</span>

_This version will be removed in a future update of the image.<br/>_
_Location:_ C:\Program Files (x86)\Android\android-sdk\platforms\android-19

## Android NDK

_Version:_ R13b<br/>
_Environment:_
* ANDROID_NDK_HOME: Location of NDK
* ANDROID_NDK_PATH: Location of NDK