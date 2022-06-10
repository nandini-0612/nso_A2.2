In this assignment I am using a simple python-flask application known as application.py and putting it behind the HAproxy which acts as a load balancer between the 3-dev servers known as devA,devB and devC. Bastion host is created for the purpose of acting as a SSH entry point into the whole network. 

There are total of 5 servers deployed using city cloud. BastionNSO host and HAproxy are provided with floating ip while Dev servers have only private ip address.

We are using ansible-playbook "site.yaml" to deploy our flask application on dev servers and to do load-balancing among them we deploy the haproxy load balacing configuration file.

For testing we have to simply curl to haproxy's ip address and it should reply with the time and hostname of the host that replied.

In addition I am even doing UDP-LoadBalancing using Nginx.
