# Windows Hybrid Lab

Infra de lab Windows/Hybrid (AD, PKI, GPO, Azure, sécurité).

## Arborescence
- `src/` : scripts et modules
- `labs/` : scénarios de lab reproductibles
- `runbooks/` : procédures d’exploitation/troubleshooting
- `docs/` : schémas, ADR (décisions d’architecture)

## Qualité & CI
- **PSScriptAnalyzer** pour les scripts PowerShell
- **markdownlint** pour la doc Markdown

![CI](https://github.com/gdesoutter/windows-hybrid-lab/actions/workflows/ci.yml/badge.svg)

## Démarrage
```pwsh
# Exemple : lancer les linters en local
pwsh -NoProfile -File .\.vscode\local-lint.ps1
