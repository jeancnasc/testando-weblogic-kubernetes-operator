#Cria o namespace

kubectl create namespace domain1-ns
kubectl label ns domain1-ns weblogic-operator=enabled

#Configura a senha de administrador

kubectl -n domain1-ns create secret generic \
  domain1-weblogic-credentials \
   --from-literal=username=weblogic --from-literal=password=welcome1

kubectl -n domain1-ns label  secret \
   domain1-weblogic-credentials \
   weblogic.domainUID=domain1

#Secreto para o Weblogic Deploy Tooling (WDT), deve ser referenciado em spec.model.runtimeEncryptionSecret do Model

kubectl -n domain1-ns create secret generic \
   domain1-runtime-encryption-secret \
    --from-literal=password=my_runtime_password

kubectl -n domain1-ns label  secret \
    domain1-runtime-encryption-secret \
    weblogic.domainUID=domain1

#Aplicando yamls

kubectl apply -f ./domain1.domain.yaml
kubectl apply -f ./domain1.ingress.yaml
