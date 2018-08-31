param
(
    $isoFilename = "en_windows_server_2016_updated_feb_2018_x64_dvd_11636692.iso"
)

$isoFullPath    = ".\iso\$isoFilename"
# Path to new re-mastered ISO
$isoDestPath    = ".\iso\Windows2016.iso"
# Path to the Extracted or Mounted Windows ISO 
$isoMediaFolder = ".\iso\iso_files"
# Path to the Oscdimg tool
$pathToOscdimg  = ".\Tools\Oscdimg\x86"

# Extract XProtect Installer files
if(test-path $isoFullPath)
{
	# Extract the iso file to iso_files folder
	& .\Tools\7z\7z.exe x -o'.\iso\iso_files' $isoFullPath

 
	# Instead of pointing to normal efisys.bin, use the *_noprompt instead
	$BootData='2#p0,e,b"{0}"#pEF,e,b"{1}"' -f "$isoMediaFolder\boot\etfsboot.com","$isoMediaFolder\efi\Microsoft\boot\efisys_noprompt.bin"
	 
	# re-master Windows ISO
	Start-Process -FilePath "$pathToOscdimg\oscdimg.exe" -ArgumentList @("-bootdata:$BootData",'-u2','-udfver102',"$isoMediaFolder","$isoDestPath") -PassThru -Wait -NoNewWindow

	#Remove temporay extracted iso files
	Remove-Item -Recurse -Force $isoMediaFolder
}
else
{
	write-error "ERROR: Could not find $isoFullPath"
}

