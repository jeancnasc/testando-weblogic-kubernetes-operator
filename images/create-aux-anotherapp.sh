unzip -n weblogic-deploy -d ./aux-anotherapp
docker build \
  --build-arg AUXILIARY_IMAGE_PATH=/auxiliary \
  --tag model-in-image:AUX-ANOTHER-v1 ./aux-anotherapp