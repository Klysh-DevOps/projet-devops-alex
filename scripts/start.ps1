Write-Host "Démarrage du projet DevOps..." -ForegroundColor Cyan
docker compose up --build -d
if ($LASTEXITCODE -ne 0) {
    Write-Error "Impossible de démarrer Docker Compose."
    exit 1
}
Write-Host "Application disponible sur http://localhost:8080" -ForegroundColor Green
