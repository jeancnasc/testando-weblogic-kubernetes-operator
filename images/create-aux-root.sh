unzip -n weblogic-deploy -d ./aux-root
docker build \
  --build-arg AUXILIARY_IMAGE_PATH=/auxiliary \
  --tag root:v1 ./aux-root