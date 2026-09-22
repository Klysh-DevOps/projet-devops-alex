# Projet DevOps personnel

## Objectif

Construire progressivement un mini-projet qui démontre les bases d'une démarche DevOps :

**Code → Git → Tests → Docker → CI → CD → Monitoring**

Le site est volontairement simple : la valeur du projet se trouve surtout dans
l'automatisation, la reproductibilité et la documentation.

## Lancer localement

### Sans Docker

Ouvrir `index.html` dans un navigateur.

### Avec Docker

```powershell
docker compose up --build -d
```

Puis ouvrir :

`http://localhost:8080`

Vérifier la santé du service :

`http://localhost:8080/health`

Arrêter :

```powershell
docker compose down
```

## Tests

Installer Node.js puis :

```powershell
npm test
```

## Git

Premier dépôt :

```powershell
git init
git add .
git commit -m "feat: initialisation du projet DevOps"
git branch -M main
git remote add origin <URL_DE_TON_REPOSITORY>
git push -u origin main
```

## CI

Chaque push sur `main` et chaque Pull Request déclenche :

1. checkout du code
2. installation de Node.js
3. tests automatiques
4. build de l'image Docker
5. vérification de l'image

## Prochaines étapes

- [ ] Ajouter un lint HTML/CSS/JS
- [ ] Publier l'image Docker sur GitHub Container Registry
- [ ] Ajouter un environnement staging
- [ ] Déployer automatiquement après validation
- [ ] Ajouter un monitoring simple
- [ ] Ajouter une page `/version`
- [ ] Ajouter des tests HTTP
- [ ] Documenter les incidents et corrections
- [ ] Ajouter une stratégie de branches et de Pull Requests

## Ce que je veux démontrer

Je ne cherche pas uniquement à montrer que je sais créer une page web.
Je veux démontrer que je comprends progressivement le cycle de vie d'une
application : versionner, tester, automatiser, conteneuriser, déployer et
observer.
