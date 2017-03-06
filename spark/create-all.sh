oc create -f spark-master-controller.yaml
oc create -f spark-master-service.yaml
oc create -f spark-webui.yaml
oc create -f spark-worker-controller.yaml
oc create -f notebook-controller.yaml
oc create -f notebook-service.yaml
oc create -f spark-app-ui.yaml