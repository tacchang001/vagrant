# ƒŠƒ|ƒWƒgƒŠ‚ð’Ç‰Á
sudo yum -y install yum-plugin-priorities
sudo sed -i -e "s/\]$/\]\npriority=1/g" /etc/yum.repos.d/CentOS-Base.repo
sudo yum -y install epel-release
sudo sed -i -e "s/\]$/\]\npriority=5/g" /etc/yum.repos.d/epel.repo
sudo yum -y install http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm
sudo sed -i -e "s/\]$/\]\npriority=10/g" /etc/yum.repos.d/rpmforge.repo

#
ISO_FILENAME=/home/vagrant/VBoxGuestAdditions_`cat /home/vagrant/.vbox_version`.iso
if [ "$ISO_FILENAME " != " " ]; then
  cd /tmp
  sudo mount -o loop $ISO_FILENAME /mnt
  sudo sh /mnt/VBoxLinuxAdditions.run --nox11
  sudo umount /mnt
  # sudo /etc/rc.d/init.d/vboxadd setup
  rm $ISO_FILENAME
fi
