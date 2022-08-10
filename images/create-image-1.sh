./imagetool/bin/imagetool.sh update \
  --tag model-in-image:App-v1 \
  --fromImage container-registry.oracle.com/middleware/weblogic:14.1.1.0-8 \
  --wdtModel      ./image-1/model.10.yaml \
  --wdtVariables  ./image-1/model.10.properties \
  --wdtArchive    ./image-1/archive.zip \
  --wdtModelOnly \
  --wdtDomainType WLS \
  --chown oracle:root