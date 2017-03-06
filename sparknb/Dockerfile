FROM ubuntu:16.10

RUN apt-get update && apt-get install -y \
        software-properties-common \
        curl \
        debconf-utils \
        wget \
        git \
        make \
     && rm -rf /var/lib/apt/lists/*

ENV SPARK_HOME=/usr/local/spark

ENV JAVA_HOME=/usr/lib/jvm/java-8-oracle \
    CONDA_DIR=/opt/conda

ADD install_spark /install_spark
RUN sh /install_spark/install_spark.sh

ENV PATH=$CONDA_DIR/bin:$PATH \
    SHELL=/bin/bash \
    LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8

ADD install_py /install_py
RUN sh /install_py/install_python.sh

ENV SBT_VERSION=0.13.13 \
    SBT_HOME=/usr/local/sbt \
    PATH=${PATH}:${SBT_HOME}/bin

ADD install_scala /install_scala
RUN sh /install_scala/install_sbt.sh
RUN sh /install_scala/install_scala.sh

ENV PYTHONPATH=$PYTHONPATH:$SPARK_HOME/python

ADD .ipython root/.ipython

ADD scripts /scripts
RUN chmod +x /scripts/* \
    && mv /scripts/launch.sh $SPARK_HOME/bin/ \
    && chmod +x $SPARK_HOME/bin/launch.sh

CMD ["usr/local/spark/bin/launch.sh"]

