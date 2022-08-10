helm upgrade \
weblogic-operator/weblogic-operator \
--reuse-values \
--set "domainNamespaces={default,ns1}" \
--wait