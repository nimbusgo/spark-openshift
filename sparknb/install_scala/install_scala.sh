cd /tmp && \
    echo -ne "- with sbt $SBT_VERSION\n" >> /root/.built &&\
    git clone https://github.com/apache/incubator-toree.git && \
    cd incubator-toree && \
    make dist SHELL=/bin/bash && \
    mv dist/toree /opt/toree && \
    chmod +x /opt/toree && \
    rm -rf /tmp/incubator-toree
