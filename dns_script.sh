for i in {1..4};
do
for j in {1..255};
do
echo "192.168.$i.$j host-192-168-$i-$j" | sudo tee -a /etc/hosts
done
done

sudo hostname host-$(hostname -I | awk '{$1=$1};1' | sed 's/\./-/'g)

hostname

echo "sudo hostname host-$(hostname -I | awk '{$1=$1};1' | sed 's/\./-/'g)" | sudo tee -a /home/ubuntu/.profile

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
echo JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 | sudo tee -a /etc/environment
