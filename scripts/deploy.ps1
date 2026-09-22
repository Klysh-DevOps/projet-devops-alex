param(
    [Parameter(Mandatory = $true)]
    [string]$Image
)

$ContainerName = "projet-devops-staging"
$Port = 8081

Write-Host "Déploiement de $Image"

docker pull $Image

docker rm -f $ContainerName 2>$null

docker run -d `
    --name $ContainerName `
    -p "${Port}:80" `
    $Image

Write-Host "Déploiement terminé."
Write-Host "Staging : http://localhost:$Port"
