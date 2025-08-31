# Lab0 - Setup DC01

## Objectif

Installer et configurer DC01 comme contrôleur de domaine pour `lab.local` avec DNS et DHCP.

## Pré-requis

- VM DC01-LAB créée et connectée au vSwitch interne
- Plan IP défini (`10.0.0.0/24`)
- ISO Windows Server 2025 installé

## Étapes

1. Configurer IP fixe : `10.0.0.10/24`, DNS = `10.0.0.10`

2. Installer les rôles AD DS + DNS

3. Installer et autoriser DHCP dans AD + configurer options DNS/Domaine

4. Activer  DNS aging & scavenging (serveur + zone)

5. Créer l'utilisateur LAB\user1

## Cmdlets explorées

- New-NetIPAddress, Set-DnsClientServerAddress
- Install-WindowsFeature, Install-ADDSForest
- Add-DhcpServerInDC, Add-DhcpServerv4Scope, Set-DhcpServerv4DnsSetting
- Set-DnsServerScavenging, Set-DnsServerZoneAging
- New-ADUser

## Résultats attendus

- DC01 est contrôleur de domaine `lab.local`
- Résolution DNS locale opérationnelle
- DHCP distribue des adresses
- Utilisateur `LAB\user1` créé et actif

## Validation checklist

- Event logs : promotion AD réussie
- `dcdiag` sans erreurs critiques
- `ipconfig /all` sur CL01 → DNS = 10.0.0.10
- `Get-ADUser user1` retourne l’objet
