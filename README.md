# Teambit - k8s files (on-premise)

## Install minikube

```
brew install minikube
```

## Install Helm

```
brew install helm
```


## Iniciar minikube

```
minikube start
```

## Abrir dashboard

```
minikube dashboard
```

## Configurar conexión a dockerhub

```
kubectl create secret docker-registry image-pull-secret --docker-server=https://index.docker.io/v1/ --docker-username=<username> --docker-password=<password>
```


## Install

```
helm install teambit helm-teambit
```

## Upgrade

```
helm upgrade teambit helm-teambit
```



## Crear Tunel

```
minikube tunnel
```

## Ver web

```
http://localhost
```
