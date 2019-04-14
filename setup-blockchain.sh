#!/bin/bash

export CHAINCODE_VERSION=1.0

ansible-playbook 2_start_stop_blockchain/1.CA_setup.yml --inventory ansible_hosts.yml
ansible-playbook 2_start_stop_blockchain/2.Zookeper_setup.yml --inventory ansible_hosts.yml
ansible-playbook 2_start_stop_blockchain/3.Kafka_setup.yml --inventory ansible_hosts.yml
ansible-playbook 2_start_stop_blockchain/4.Orderer_setup.yml --inventory ansible_hosts.yml
ansible-playbook 2_start_stop_blockchain/5.Peers_setup.yml --inventory ansible_hosts.yml
ansible-playbook 2_start_stop_blockchain/6.Channel1_setup.yml --inventory ansible_hosts.yml
ansible-playbook 2_start_stop_blockchain/7.Chaincode1_setup.yml --extra-vars "chaincode_version=$CHAINCODE_VERSION" --inventory ansible_hosts.yml
ansible-playbook 2_start_stop_blockchain/8.Chaincode_test.yml --inventory ansible_hosts.yml
