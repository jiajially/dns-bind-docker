FROM centos:latest
RUN /usr/bin/yum -y install bind bind-utils bind-chroot
EXPOSE 53/udp 953/tcp

CMD ["/home/DNSWorkDir/startBind.sh"] 
