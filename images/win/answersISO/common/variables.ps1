$UnAttendWindowsUsername = 'vagrant'
$UnAttendWindowsPassword = 'vagrant'
$WSUSServer = 'http://nl-ams-wsus:8530'
$proxyServerAddress = ''
$proxyServerUsername = ''
$proxyServerPassword = ''
$httpIp = ''
$httpPort = ''

if ($ENV:UnAttendWindowsUsername) {
	$UnAttendWindowsUsername = $ENV:UnAttendWindowsUsername
}

if ($ENV:UnAttendWindowsPassword) {
	$UnAttendWindowsPassword = $ENV:UnAttendWindowsPassword
}

if ($ENV:WSUSServer) {
	$WSUSServer = $ENV:WSUSServer
}

if ($ENV:proxyServerAddress) {
	$proxyServerAddress = $ENV:proxyServerAddress
}

if ($ENV:proxyServerUsername) {
	$proxyServerUsername = $ENV:proxyServerUsername
}

if ($ENV:proxyServerPassword) {
	$proxyServerPassword = $ENV:proxyServerPassword
}

if ($ENV:httpIp) {
	$httpIp = $ENV:httpIp
}

if ($ENV:httpPort) {
	$httpPort = $ENV:httpPort
}
