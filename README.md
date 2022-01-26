# Projet10- AWS
Nous dispose que de quelques machines pour la gestion de ses outils internes et pour héberger son site internet. Des incidents matériels sur le serveur de messagerie ont pénalisé l'entreprise le mois dernier. Le directeur veut éviter que la situation ne se reproduise mais réalise que fiabiliser les services en interne coûterait très cher.
L'entreprise décide donc de migrer l’ensemble de son SI vers le cloud. Les outils collaboratifs seront migrés vers Google Apps et le site de l’entreprise sera hébergé sur AWS.

# Objectif :
L'objectif est d'automatiser l'installation de notre infrastructure décrite dans descriptif dans AWS.
Nous allons donc modéliser et provisionner toutes les ressources nécessaires à nos applications dans un fichier texte écrit en YAML (CloudFormation_reseau.yaml et CloudFormation_systeme.yam) à l'aide du ClouFormation de AWS.

# CloudFormation :
CloudFormation est un outil AWS (Amazon Web Services) permettant d'automatiser la création et la mise à jour de l'infrastructure réseau et système AWS. Il n'est dévolu qu'à cette tâche.

# Descriptif :
Nous devons mettre en place :
    - Un serveur WordPress (le site de l’entreprise) sur AWS en utilisant :
            * RDS pour le stockage de la base de données,
            * S3 pour le stockage des médias (via le plugin amazon-web-services),
            * EC2 et Docker pour le serveur web,
            * ELB pour distribuer les requêtes sur les instances EC2,
    - EC2 destinée à héberger l’application intranet sur un sous-réseau privé,
    - EC2 destinée à faire une liaison VPN entre votre serveur VPN local, 
    - Auto-scaling sur les instances EC2 pour augmenter le nombre de machines dès que la charge CPU des serveurs atteint 80% en moyenne sur 5 minutes et vous veillerez à êtr informé par un mail à chaque fois que l'événement survient,
    - Evaluer les coûts de votre infrastructure AWS à partir de différentes hypothèses d'usage que vous formulerez.

Pour finir tous les éléments de votre infrastructure publique devront être répartis sur plusieurs zones de disponibilité (multi-AZ). Vous utiliserez le service ELB pour la répartition des requêtes vers les différentes zones de disponibilité (AZ).
    