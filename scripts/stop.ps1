Write-Host "Arrêt du projet DevOps..." -ForegroundColor Cyan
docker compose down
if ($LASTEXITCODE -ne 0) {
    Write-Error "Impossible d'arrêter Docker Compose."
    exit 1
}
Write-Host "Projet arrêté." -ForegroundColor Green
