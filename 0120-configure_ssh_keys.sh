# create keys for admin and app
mkdir -p /home/admin/.ssh/
mkdir -p /home/app/.ssh/

ssh-keygen -N "" -t rsa -v -f /home/admin/.ssh/id_rsa

# the new public key should now be put in place for both users.  FUTURE: have two keys
mv /home/admin/.ssh/id_rsa.pub /home/admin/.ssh/authorized_keys
cp /home/admin/.ssh/authorized_keys /home/app/.ssh/authorized_keys

# save the private key so we can login
mv /home/admin/.ssh/id_rsa admin_private_key.txt

# fix permissions of the keys
chmod 600 /home/app/.ssh/authorized_keys
chmod 600 /home/admin/.ssh/authorized_keys
chmod 700 /home/app/.ssh
chmod 700 /home/admin/.ssh
chown -R  app:app /home/app/.ssh
chown -R  admin:admin /home/admin/.ssh
