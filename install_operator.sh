helm repo add weblogic-operator https://oracle.github.io/weblogic-kubernetes-operator/charts --force-update
kubectl create namespace weblogic-operator-ns
kubectl create serviceaccount -n weblogic-operator-ns weblogic-operator-sa
helm install weblogic-operator weblogic-operator/weblogic-operator /
  --namespace weblogic-operator-ns /
  --set serviceAccount=weblogic-operator-sa /
  --set "enableClusterRoleBinding=true" /
  --set "domainNamespaceSelectionStrategy=LabelSelector" /
  --set "domainNamespaceLabelSelector=weblogic-operator`=enabled" /
  --wait

kubectl get pods --all-namespaces=true -l weblogic.operatorName
