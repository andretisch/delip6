#/bin/sh
echo net.ipv6.conf.all.disable_ipv6=1 >> /etc/sysctl.conf
opkg remove ip6tables
opkg remove kmod-ip6tables
opkg remove odhcp6c
opkg remove 6relayd
opkg remove kmod-nf-ipt6 --force-removal-of-dependent-packages
opkg remove kmod-nf-conntrack6 --force-removal-of-dependent-packages
opkg remove kmod-ipv6 --force-removal-of-dependent-packages
reboot
