$Source = "config"
$Destination = "backups"

Write-Host "Starting configuration backup..."

if (-not (Test-Path $Destination)) {
    New-Item -ItemType Directory -Path $Destination | Out-Null
}

Copy-Item -Path "$Source\*" -Destination $Destination -Recurse -Force

Write-Host "Configuration backup completed."