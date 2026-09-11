sudo umount /home
sudo sed -i '/\/home/d' /etc/fstab
sudo lvremove -y /dev/rhel/home
sudo lvextend -l +100%FREE /dev/rhel/root
sudo xfs_growfs /
sudo pvcreate /dev/sdb
sudo vgextend rhel /dev/sdb
sudo lvextend -l +100%FREE /dev/rhel/root
sudo xfs_growfs /