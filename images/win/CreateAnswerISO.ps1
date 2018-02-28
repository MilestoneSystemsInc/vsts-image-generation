param
(
    $path ="windows-2016-serverstandard-amd64",
    $isoFolder = "answer-iso"
)


if (test-path $isoFolder){
  remove-item $isoFolder -Force -Recurse
}

if (test-path windows\$path\answer.iso){
  remove-item windows\$path\answer.iso -Force
}

mkdir $isoFolder

copy windows\$path\Autounattend.xml $isoFolder\
copy windows\$path\sysprep-unattend.xml $isoFolder\

copy windows\common\elevate.exe $isoFolder\
copy windows\common\enable-winrm.ps1 $isoFolder\
copy windows\common\enable-winrm.task.ps1 $isoFolder\
copy windows\common\fixnetwork.ps1 $isoFolder\
copy windows\common\microsoft-updates.ps1 $isoFolder\
copy windows\common\oracle-cert.cer $isoFolder\
copy windows\common\Reset-ClientWSUSSetting.ps1 $isoFolder\
copy windows\common\run-sysprep.cmd $isoFolder\
copy windows\common\run-sysprep.ps1 $isoFolder\
copy windows\common\sdelete.exe $isoFolder\
copy windows\common\sdelete.ps1 $isoFolder\
copy windows\common\Set-ClientWSUSSetting.ps1 $isoFolder\
copy windows\common\Set-ClientWSUSSetting.task.ps1 $isoFolder\
copy windows\common\set-power-config.ps1 $isoFolder\
copy windows\common\variables.ps1 $isoFolder\
copy windows\common\win-updates.ps1 $isoFolder\

Write-host "Packing $((get-childitem $isoFolder).Length) files"

# MKISOFS https://opensourcepack.blogspot.co.uk/p/cdrtools.html
write-host "`nUsing command line `n   mkisofs.exe -r -iso-level 4 -udf -o windows\$Path\answer.iso $isoFolder`n"
&  "C:\Users\fez\OneDrive\Tools\mkisofs.exe" -r -iso-level 4 -udf -o windows\$Path\answer.iso $isoFolder

if (test-path ("windows\$Path\answer.iso")){
  write-host "Iso written to windows\$Path\answer.iso"
} else
{
  write-error "Failed to create ISO"
}
if (test-path $isoFolder){
  remove-item $isoFolder -Force -Recurse
}

