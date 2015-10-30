DATESTAMP=`date +%Y%m%d%H%M%S`
cp /etc/sudoers /etc/sudoers.${DATESTAMP}-
echo "Defaults\tenv_reset" >> /etc/sudoers.${DATESTAMP}+
echo "%root\tALL=(ALL) ALL" >> /etc/sudoers.${DATESTAMP}+
echo "%admin\tALL=NOPASSWD: ALL" >> /etc/sudoers.${DATESTAMP}+
cp /etc/sudoers.${DATESTAMP}+ /etc/sudoers
