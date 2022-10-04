# HADOOP+YARN SETUP

#On each node

#Install ssh
sudo apt install ssh
sudo apt install pdsh

echo 'export PDSH_RCMD_TYPE=ssh' >> .bashrc


#Generate current host key and authorize it for ssh
ssh-keygen -t rsa -P ""
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

#Install Java
sudo apt install openjdk-8-jdk

wget https://archive.apache.org/dist/hadoop/core/hadoop-2.7.3/hadoop-2.7.3.tar.gz
tar xzf hadoop-2.7.3.tar.gz
sudo mv hadoop-2.7.3 /usr/local/hadoop

#Configure environment variables
echo 'export HADOOP_HOME=/usr/local/hadoop' >> .bashrc
echo 'export HADOOP_INSTALL=$HADOOP_HOME' >> .bashrc
echo 'export HADOOP_MAPRED_HOME=$HADOOP_HOME' >> .bashrc
echo 'export HADOOP_COMMON_HOME=$HADOOP_HOME' >> .bashrc
echo 'export HADOOP_HDFS_HOME=$HADOOP_HOME' >> .bashrc
echo 'export YARN_HOME=$HADOOP_HOME' >> .bashrc
echo 'export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native' >> .bashrc
echo 'export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin' >> .bashrc
source .bashrc
echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> /usr/local/hadoop/etc/hadoop/hadoop-env.sh
