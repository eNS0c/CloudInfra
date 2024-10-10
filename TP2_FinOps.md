# Calcul des coûts d’une Infrastructure as a Service

Provider choisi :
- AWS
- GCP
- Scaleway

## Infrastructure n°1:

1 serveur avec les ressources suivantes :
- 16 Go de RAM minimum
- 4 vCPU
- 100 Go de stockage disque

### Comparatif

AWS : 119$
GCP : 150$
Scaleway : 87$

## Infrastructure n°2:

6 serveurs avec les ressources suivantes :
- 6 Go de RAM minimum
- 3 vCPU
- 20 Go de stockage disque par serveur

● Particularité : 3 serveurs sont éteints la nuit de 22h à 6h du matin

### Comparatif

GCP : 734$
- 3 serveurs 24/24 | 444$
- 3 serveurs 16/24 | 290$

AWS : 602$
- 3 serveurs 24/24 | 362$
- 3 serveurs 16/24 | 240$

Scaleway : 180$
- 3 serveurs 24/24 | 110$
- 3 serveurs 16/24 | 70$

## Infrastructure n°3:

3 serveurs avec les ressources suivantes :
- 4 Go de RAM minimum
- 2 vCPU
- 50 Go de stockage disque par serveur

+ 1 load balancer qui répartit 5 Mb/s de données équitablement vers les 3 serveurs ci-dessus

1 service de base de données managé
- 8 Go de RAM minimum
- 2 vCPU
- 10 Go de stockage disque


### Comparatif

AWS : 400$
- 3 serveurs 24/24 | 96$
- LB 5Mb/s | 130$
- BDD | 165$

GCP : 505$
- 3 serveurs 24/24 | 351$
- LB 5Mb/s | 54$
- BDD | 100$

Scaleway : 180$
- 3 serveurs 24/24 | 65$
- LB 5Mb/s | 10$
- BDD | 105$