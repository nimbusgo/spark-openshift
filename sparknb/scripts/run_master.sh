#!/usr/bin/env bash

$SPARK_HOME/sbin/start-master.sh $@
tail -F $SPARK_HOME/logs/*