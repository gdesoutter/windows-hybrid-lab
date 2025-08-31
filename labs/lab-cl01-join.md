# Lab0 - Join CL01 au domaine

## Objectif

Joindre la machine cliente Windows 11 au domaine `lab.local`.

## Pré-requis

- VM `CL01` créée et connectée au vSwitch interne
- DC01-LAB déjà promoteur du domaine, DHCP actif

## Étapes

1. Vérifier que CL01 obtient une IP via DHCP
2. Renommer la machine en `CL01` (si nécessaire)
3. Joindre CL01 au domaine `lab.local` avec `LAB\Administrator`

## Cmdlets explorées

- Rename-Computer
- Add-Computer

## Résultats attendus

- CL01 est membre du domaine `lab.local`
- Login opérationnel avec `LAB\user1`

## Validation checklist

- CL01 reçoit une IP `10.0.0.x` via DHCP
- `ping dc01.lab.local` fonctionne
- Joindre domaine réussi (reboot + login `LAB\user1`)
- Event 4624 (logon réussi) visible sur DC01
