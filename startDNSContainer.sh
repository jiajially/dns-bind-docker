workpath=`pwd`



docker run -d --privileged=true \
-v $workpath/DNSWorkDir:/home/DNSWorkDir  \
-v $workpath/DNSWorkDir/named.rfc1912.zones:/etc/named.rfc1912.zones \
-p 53:53/udp -p 953:953/tcp  dns
