#!/bin/bash
ansible-playbook ansible-playbooks/U_CAN_Ubuntu_18-04_LTS_V1R2_STIG_MET-1.0.yml -K
#only run if you need auditing enabled. Auditing will be tweaked for both class and unclass in future updates.
#ansible-playbook stig.rules-master-udpate.yml -K

