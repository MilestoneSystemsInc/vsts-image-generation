param
(
    $specificPath ="Tools\answersISO\windows-2016-serverstandard-amd64",
    $isoFolder = "answer-iso",
    $commonPath = "Tools\answersISO\common"
)

if (test-path $isoFolder){
  write-host "Removing working temp folder"
  remove-item $isoFolder -Force -Recurse
}

if (test-path $specificPath\answer.iso){
  write-host 'Removing old answers.ISO'
  remove-item $specificPath\answer.iso -Force
}

write-host "Creating working temp folder"
mkdir $isoFolder > $null

copy $specificPath\Autounattend.xml $isoFolder\
copy $specificPath\sysprep-unattend.xml $isoFolder\

copy $commonPath\*.* $isoFolder\

Write-host "Packing $((get-childitem $isoFolder).Length) files"

# MKISOFS https://opensourcepack.blogspot.co.uk/p/cdrtools.html
write-host "`nUsing command line `n   mkisofs.exe -r -iso-level 4 -udf -o $specificPath\answer.iso $isoFolder`n"
&  ".\Tools\mkisofs\mkisofs.exe" -r -iso-level 4 -udf -o $specificPath\answer.iso $isoFolder

if (test-path ("$specificPath\answer.iso")){
  write-host "Iso written to $specificPath\answer.iso"
} else
{
  write-error "Failed to create ISO"
}
if (test-path $isoFolder){
  write-host "Removing working temp folder"
  remove-item $isoFolder -Force -Recurse
}

