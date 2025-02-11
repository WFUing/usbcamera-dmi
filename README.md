


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