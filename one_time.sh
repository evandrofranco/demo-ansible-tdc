#!/bin/bash

ansible-playbook 1_initial_setup_one_time_only/99_clean_em_all.yml --inventory ansible_hosts.yml
ansible-playbook 1_initial_setup_one_time_only/0_remove_docker_swarm.yml --inventory ansible_hosts.yml
ansible-playbook 1_initial_setup_one_time_only/1_create_swarm.yml --inventory ansible_hosts.yml
ansible-playbook 1_initial_setup_one_time_only/2_create_crypto_material.yml --inventory ansible_hosts.yml
