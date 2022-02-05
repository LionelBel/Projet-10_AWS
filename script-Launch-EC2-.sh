#!/bin/bash
### Installation et configuration de Docker sur instance vierge Amazon Linux 2 AMI (HVM)
yum update -y
amazon-linux-extras install -y docker 
       #######################
## Demarrage du service docker
systemctl enable docker
systemctl start docker.service
## Mise en place de notre container WordPress personnalisé
docker pull lionelbel/wordpress-custom
docker run --name=wordpress -d -p 80:80 -e WORDPRESS_DB_HOST=${rdshostname} lionelbel/wordpress-custom:latest
## Excécution du script de configuration du site 
docker exec wordpress /var/www/install-site-wp.sh ${lbdnsname}
## Edition des variables
rdshostname: !GetAtt WordpressDB.Endpoint.Address
lbdnsname: !GetAtt WordpressLoadBalancer.DNSName

###############Template###############
#UserData:
#        Fn::Base64: !Sub
#          - |
#            #!/bin/bash
#            yum update -y
#            amazon-linux-extras install docker -y
#            systemctl enable docker
#            systemctl start docker.service
#            docker pull lionelbel/wordpress-custom
#            docker run --name=wordpress -d -p 80:80 -e WORDPRESS_DB_HOST=${rdshostname} lionelbel/wordpress-custom:latest
#            docker exec wordpress /var/www/install-site-wp.sh ${lbdnsname}
#          - rdshostname: !GetAtt WordpressDB.Endpoint.Address
#            lbdnsname: !GetAtt WordpressLoadBalancer.DNSName
#
########################################