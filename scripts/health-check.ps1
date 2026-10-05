$AppConfig = "config/app.conf"
$MonitoringConfig = "config/monitoring.conf"

Write-Host "Running application health check..."

$MissingFiles = @()

if (-not (Test-Path $AppConfig)) {
    $MissingFiles += $AppConfig
}

if (-not (Test-Path $MonitoringConfig)) {
    $MissingFiles += $MonitoringConfig
}

if ($MissingFiles.Count -gt 0) {
    Write-Host "Health check failed."
    Write-Host "Missing required configuration files:"

    foreach ($File in $MissingFiles) {
        Write-Host " - $File"
    }

    exit 1
}

Write-Host "Required configuration files found."
Write-Host "Health check completed successfully."
exit 0