#!/usr/bin/env bash

oc create -f ./server-ui-template.yaml

oc new-app --template oshinko \
           -n oshinko-test \
           -p OSHINKO_SERVER_IMAGE=radanalyticsio/oshinko-rest \
           -p OSHINKO_CLUSTER_IMAGE=nimbusgo/sparknb \
           -p OSHINKO_WEB_IMAGE=radanalyticsio/oshinko-webui