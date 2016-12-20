#!/usr/bin/env bash

$SPARK_HOME/sbin/start-slave.sh spark://$1:7077
tail -F $SPARK_HOME/logs/*