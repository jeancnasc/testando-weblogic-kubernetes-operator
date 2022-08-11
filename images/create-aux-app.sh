docker build \
  --build-arg AUXILIARY_IMAGE_PATH=/auxiliary \
  --tag app:v1 ./aux-app