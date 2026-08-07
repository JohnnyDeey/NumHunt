$sw = Get-Content sw.js -Raw
$sw -match "numhunt-v(\d+\.?\d*)" | Out-Null
$current = $Matches[1]
$next = [double]$current + 0.1
$next = [math]::Round($next, 1)
$sw = $sw -replace "numhunt-v$current", "numhunt-v$next"
Set-Content sw.js $sw
Write-Host "Cache bumped to numhunt-v$next"
