rm -r ./imagetool
unzip imagetool.zip
./imagetool/bin/imagetool.sh cache deleteEntry --key wdt_latest
./imagetool/bin/imagetool.sh cache addInstaller \
  --type wdt \
  --version latest \
  --path ./weblogic-deploy.zip