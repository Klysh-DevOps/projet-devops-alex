param(
    [Parameter(Mandatory = $true)]
    [string]$Image
)

$ContainerName = "projet-devops-staging"
$Port = 8081

Write-Host "Déploiement de $Image"

# 1. Télécharger l'image
docker pull $Image

# Si le téléchargement échoue, on arrête immédiatement
if ($LASTEXITCODE -ne 0) {
    Write-Host "Échec du téléchargement de l'image."
    exit 1
}

Write-Host "Image téléchargée avec succès."

# 2. Supprimer l'ancien conteneur
docker rm -f $ContainerName 2>$null

# 3. Démarrer le nouveau conteneur
docker run -d `
    --name $ContainerName `
    -p "${Port}:80" `
    $Image

# Vérifier que docker run a réussi
if ($LASTEXITCODE -ne 0) {
    Write-Host "Échec du démarrage du conteneur."
    exit 1
}

Write-Host "Déploiement terminé."
Write-Host "Staging : http://localhost:$Port"
