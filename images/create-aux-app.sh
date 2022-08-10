unzip -n weblogic-deploy -d ./aux-app
docker build \
  --build-arg AUXILIARY_IMAGE_PATH=/auxiliary \
  --tag model-in-image:AUX-v1 ./aux-app