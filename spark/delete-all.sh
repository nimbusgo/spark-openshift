oc delete service notebook-service
oc delete service spark-app-ui
oc delete rc notebook-controller
oc delete rc spark-worker-controller
oc delete service spark-master-service
oc delete service spark-webui
oc delete rc spark-master-controller