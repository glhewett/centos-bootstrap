create_user_with_ssh_private_key() {
  USER=${1}
  HOME=/home/${USER}

  # create group
  groupadd ${USER}

  # create user
  useradd -k /etc/skel -p NP -m -s /bin/zsh -g ${USER} ${USER} 

  # setup ssh key
  mkdir -p /home/${USER}/.ssh/
  ssh-keygen -N "" -t rsa -v -f ${HOME}/.ssh/id_rsa
  mv ${HOME}/.ssh/id_rsa.pub ${HOME}/.ssh/authorized_keys
  mv ${HOME}/.ssh/id_rsa ./${USER}_user_private_key.txt

  # fix permissions
  chmod 600 ${HOME}/.ssh/authorized_keys
  chmod 700 ${HOME}/.ssh
  chown -R ${USER}:${USER} ${HOME}/.ssh
}

export -f create_user_with_ssh_private_key
