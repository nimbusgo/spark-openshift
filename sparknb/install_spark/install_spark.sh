# Install Java
add-apt-repository ppa:webupd8team/java

apt-get update \
    && echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections \
    && apt-get install -y oracle-java8-installer \
    && rm -rf /var/lib/apt/lists/*

curl -s http://d3kbcqa49mib13.cloudfront.net/spark-2.0.2-bin-hadoop2.6.tgz | tar -xz -C /usr/local/ && \
cd /usr/local && \
mv spark-2.0.2-bin-hadoop2.6 spark

## chgrp -R 0 /usr/local/spark
## chmod -R g+rw /usr/local/spark
## find /usr/local/spark -type d -exec chmod g+x {} +
