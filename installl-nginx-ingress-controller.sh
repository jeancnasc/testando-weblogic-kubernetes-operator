helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx --force-update
kubectl create namespace nginx
helm install nginx-operator ingress-nginx/ingress-nginx --namespace nginx