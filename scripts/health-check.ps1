$ConfigFile = "config/app.conf"

Write-Host "Running application health check..."

if (Test-Path $ConfigFile) {
    Write-Host "Application configuration found."
    Write-Host "Health check completed successfully."
    exit 0
}

Write-Host "Application configuration was not found."
exit 1