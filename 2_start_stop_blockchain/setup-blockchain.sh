#!/bin/bash

#ansible-playbook 1.CA_setup.yml --inventory ../ansible_hosts.yml
#ansible-playbook 2.Zookeper_setup.yml --inventory ../ansible_hosts.yml
#ansible-playbook 3.Kafka_setup.yml --inventory ../ansible_hosts.yml
#ansible-playbook 4.Orderer_setup.yml --inventory ../ansible_hosts.yml
#ansible-playbook 5.Peers_setup.yml --inventory ../ansible_hosts.yml
ansible-playbook 6.Channel1_setup.yml --inventory ../ansible_hosts.yml
