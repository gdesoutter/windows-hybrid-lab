# Lab - Setup du Lab de base

## Objectif

Documenter la topologie réseau et la configuration de base du lab.
Ce document est la référence centrale pour toutes les phases.

## Hyperviseur

- Type : Hyper-V
- Nom hôte : HYPV-LAB01
- IP Management : 192.168.1.99
- vSwitch :
  - **vSwitch-INT** (Communication DC01 <-> CL01 <-> Hôte sans Internet)
  - **vSwitch-EXT** (Externe relié à la deuxième NIC)

## Réseau

- Subnet interne : `10.0.0.0/24`
- Plan IP :
  - DC01 : `10.0.0.10/24`, DNS = `10.0.0.10`
  - CL01 : DHCP
- DHCP Scope prévu : `10.0.0.100–200`
- Subnet LAN (EXT): `192.168.1.0/24`

## Validation checklist

- vSwitch LabSwitch créé et visible
- DC01 connecté au switch
- CL01 connecté au switch
- Ping DC01 <-> CL01 OK

## Diagramme (Machines Virtuelles)

- **DC01** : Windows Server 2025, rôles AD DS, DNS, DHCP, domaine `lab.local`
- **CL01** : Windows 11 Pro, joint au domaine `lab.local`

## Validation checklist finale

- DC01 répond en ping sur `10.0.0.10`
- CL01 reçoit une IP via DHCP
- CL01 résout `dc01.lab.local` en DNS
- CL01 joint `lab.local` et login `LAB\user1` fonctionne
