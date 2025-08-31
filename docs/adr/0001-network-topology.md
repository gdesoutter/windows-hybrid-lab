# ADR 0001 - Choix de la topologie réseau du lab

**Date :** 2025-08-25
**Statut :** Accepté

## Contexte

Le lab doit permettre de tester :

- Active Directory multi-VM (DC01 + CL01)
- Services réseau (DNS, DHCP, Kerberos, GPO…)
- Fonctionnement hybride avec Azure par la suite

Contraintes :

- Isolation vis-à-vis d’Internet
- Simplicité de configuration
- Possibilité d’évoluer vers une extension WAN/Cloud

Options envisagées :

1. vSwitch externe (connecté au LAN physique)
2. vSwitch NAT (accès Internet via l’hôte)
3. vSwitch interne/host-only (isolé, uniquement DC01 <-> CL01 <-> Hôte)

## Décision

Nous retenons le **vSwitch interne (Hyper-V)**, nommé `LabSwitch`.
Un vSwitch externe `vSwitch-EXT` est aussi créé uniquement pour la gestion hôte (si besoin).

## Conséquences

- ✅ Isolation totale du trafic → pas de risque pour le LAN pro/perso
- ✅ Contrôle complet du plan IP (`10.0.0.0/24`)
- ✅ Prévisible pour les tests Kerberos, DHCP, DNS
- ⚠️ Pas d’accès Internet natif pour les VMs → Bascule sur le switch externe pour les MAJ en attendant le WSUS
- ⚠️ Pas d’intégration directe au réseau LAN (impossible de ping depuis un autre PC)
