#!/usr/bin/env bash

# dpkg -l | grep maria
# sudo apt-get remove --purge mariadb-server-10.0 mariadb-common phpmyadmin python-mysqldb -y
# sudo nano /root/.my.cnf
# mysql -u root -p --execute="SELECT User,Host,Password FROM mysql.user;"

CURRENT_DIR=${PWD}
TMP_DIR=/tmp/ansible-test
mkdir -p ${TMP_DIR} 2> /dev/null

# Create hosts inventory
cat << EOF > ${TMP_DIR}/hosts
[webservers]
localhost ansible_connection=local
EOF

# Create group_vars for the web servers
# https://127.0.0.1:444
mkdir -p ${TMP_DIR}/group_vars 2> /dev/null
cat << EOF > ${TMP_DIR}/group_vars/webservers

mariadb_root_password: "i_am_root"
mariadb_phpmyadmin_pw: "i_am_admin"
mariadb_phpmyadmin_pw_controluser: "i_am_control"
mariadb_phpmyadmin_install: true
# mariadb_disable_user_management: true

EOF

# Create Ansible config
cat << EOF > ${TMP_DIR}/ansible.cfg
[defaults]
roles_path = ${CURRENT_DIR}/../
host_key_checking = False
EOF

# Create playbook.yml
cat << EOF > ${TMP_DIR}/playbook.yml
---

- hosts: webservers
  gather_facts: yes
  become: yes

  roles:
    - ansible-mariadb
EOF

export ANSIBLE_CONFIG=${TMP_DIR}/ansible.cfg

# Syntax check
ansible-playbook ${TMP_DIR}/playbook.yml -i ${TMP_DIR}/hosts --syntax-check

# First run
ansible-playbook ${TMP_DIR}/playbook.yml -i ${TMP_DIR}/hosts

# Idempotence test
# ansible-playbook ${TMP_DIR}/playbook.yml -i ${TMP_DIR}/hosts | grep -q 'changed=0.*failed=0' \
#    && (echo 'Idempotence test: pass' && exit 0) \
#    || (echo 'Idempotence test: fail' && exit 1)

updatedb

sudo service mysql status
