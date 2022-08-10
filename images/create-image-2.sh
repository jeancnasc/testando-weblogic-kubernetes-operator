./imagetool/bin/imagetool.sh update \
  --tag model-in-image:AnotherApp-v1 \
  --fromImage container-registry.oracle.com/middleware/weblogic:14.1.1.0-8 \
  --wdtModel      ./image-2/model.10.yaml \
  --wdtVariables  ./image-2/model.10.properties \
  --wdtArchive    ./image-2/archive.zip \
  --wdtModelOnly \
  --wdtDomainType WLS \
  --chown oracle:root