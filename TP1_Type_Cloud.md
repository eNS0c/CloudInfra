# Type de Cloud pour quels besoins ?

## Cas N°1 : Eldo

### Le Contexte
- 2 applications (Interface de mise en relation Pro/User | Outils de CRM PRO)
- 60 employés (35 développers)
- 50 Clients Pro / 100 000 utilisateurs 
- 3 environnements de développement par projet (PreProd/Qualif/Prod)
- Solution de monitoring / Alerting pour la production
- PRA

### Solutions adaptés pour deployer Eldo :

- Cloud Provider permettant une scalabilité de l'application (Jour/Nuit par exemple)
- SI l'application est faites de microservices alors Kubernetes est la solution d'orchestration vers laquelle se tourner
- De 10 à 30 serveurs de 20 CPU et 256 Go RAM

    Prix : ~10 000€ / mois + 5000€ avec PRA

    Type : Public Cloud | PaaS

## Cas N°2 : MySecureProtect

### Le Contexte
- 1 million d’objets connectés sont en liaison constante avec les serveurs de l’entreprise
- 1 app mobile qui permet de gerer de recevoir des notifs
- 2 solicitations minimales par jours + des alertes d'anomalies

### Solutions adaptés pour deployer MySecureProtect :

- Une solution de Cloud Hybride me permet adapté (Nombreux objet connecter dans du cloud privée / application connection mobile peux soliciter Cloud Public)
- 15 serveurs de 20 CPU et 256 Go RAM OnPrem / déploiement Serverless pour l'app mobile

    Prix : (20000*15/5/12 = 5000€ / mois amortissement) + (500€ / mois pour le mobile) + (2 techniciens + energie = 6000€ / mois) = 11500€

    Type : Hybride Cloud | PaaS

## Cas N°3 : Paul

### Contexte 

- Héberger NextCloud avec 1To de Datas

### Solution adaptés pour Paul

- Nas pouvant faire de la containerisation
- 3 disques de 500 Go pour la construction du RAID 5

    Prix : 500 + 100 * 3 = 800 €

    Type : SaaS

## Cas N°4 : Une grande entreprise française de soutien aux armées (Thales)

### Contexte 

- Confidentiel
- Besoin de moderniser ses infrastructures informatiques
- Diversité de service, de quantité de serveurs, stockages et réseaux évoluent très rapidement

### Solution adaptés pour Thales

- Private Cloud | OpenStack mutualiser a du OpenShift pour la scalabilité
- Petit DataCenter

    Prix : 1M €
    
    Type : Private Cloud | IaaS

## Cas N°5 : TheFoodStore

### Contexte 

- Petite entreprise
- Cherche à publier un site e-commerce rapidement afin de générer ses premières ventes en ligne

### Solution adaptés pour TheFoodStore

- Outils de site vitrine comme WordPress

    Prix : 50€ / mois
    
    Type : SaaS

## Cas N°6 : DeliverEats

### Contexte 

- Plateforme permettant de commander et se faire livrer des repas
- 1 application mobile et 1 site internet pour passer commande
- 5M d'utilisateurs potentiel

### Solution adaptés pour DeliverEats

- Besoin de flexibilité et de haute disponibilité
- Piviligier le public cloud et meme multi cloud 

    Prix : 100 000€ /mois
    
    Type : Soit Public Cloud | PaaS (Kubernetes)  / Soit Public Cloud PaaS (ServerLess selon la demande)

## Cas N°7 :  Onenveutpa

### Contexte 

- Nouveau système pour la gestion des informations de ses potentiels futurs clients
- Les télévendeurs travaillent partout dans le monde


### Solution adaptés pour Onenveutpa

- Solution de private Cloud connecté en SD-WAN
- Multi DataCenter

    Prix : 100 000€ /mois pour 10 000 employés
    
    Type : Private Cloud | IaaS