


helm lint usbmapper-chart

helm package usbmapper-chart


helm install usbmapper-release ./usbmapper-chart-0.1.0.tgz


helm status usbmapper-release


helm uninstall usbmapper-release


helm list


helm template usbmapper-release ./usbmapper-chart


kubectl delete clusterrole usb-camera-viewer
kubectl delete clusterrolebinding usb-camera-viewer-binding
kubectl delete serviceaccount usb-camera-viewer-sa -n default
kubectl delete job pre-install-job -n default


helm lint usb-chart


helm package usb-chart


helm install usb-release ./usb-chart-0.1.0.tgz


helm status usb-release


helm uninstall usb-release


v4l2-ctl --device=/dev/video0 --list-ctrls

helm template usb-release ./usb-chart

kubectl port-forward -n default service/camerausbmapper-cluster-ip 8898:8898

kubectl exec -it usb-dmi-mapper-78789bb9bc-bcng5 -- /bin/sh

docker build -f Dockerfile-debug -t september9/usb-camera-mapper:v1.2 .

netstat -tulnp | grep 7777

lsof -i :7777

ss -tulnp | grep 7777

curl http://localhost:7777/api/v1/ping
curl http://192.168.0.103:30077/api/v1/ping
curl http://localhost:30077/api/v1/device/camera-usb-0/Framerate


kubectl run curlpod --image=radial/busyboxplus:curl -i --tty --rm

curl http://camerausbmapper.default.svc.cluster.local:7777/api/v1/ping

