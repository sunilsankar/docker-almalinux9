FROM  almalinux/9-init
ENV container=docker
CMD ["/sbin/init"]
STOPSIGNAL SIGRTMIN+3
RUN dnf update -y;dnf -y install procps-ng epel-release; dnf clean all; rm -rf /var/cache /var/log/dnf* /var/log/yum.*
RUN systemctl mask systemd-remount-fs.service dev-hugepages.mount sys-fs-fuse-connections.mount systemd-logind.service getty.target console-getty.service systemd-udev-trigger.service systemd-udevd.service systemd-random-seed.service systemd-machine-id-commit.service
