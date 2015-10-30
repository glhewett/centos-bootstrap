DATESTAMP=`date +%Y%m%d%H%M%S`
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.${DATESTAMP}-
cat > /etc/ssh/sshd_config.${DATESTAMP}+ <<SSHD_CONFIG
HostKey /etc/ssh/ssh_host_rsa_key
HostKey /etc/ssh/ssh_host_ecdsa_key
SyslogFacility AUTHPRIV
PasswordAuthentication no
ChallengeResponseAuthentication no
X11Forwarding no
UsePAM no
UseDNS no
Subsystem sftp /usr/libexec/openssh/sftp-server
UsePrivilegeSeparation yes
PermitRootLogin no
PrintMotd no
AcceptEnv LANG LC_*
AllowUsers app admin
SSHD_CONFIG
cp /etc/ssh/sshd_config.${DATESTAMP}+ /etc/ssh/sshd_config
systemctl restart sshd.service
