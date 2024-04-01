mk-start:
	minikube start

install: 
	helm install teambit helm-teambit

upgrade: 
	helm upgrade teambit helm-teambit
