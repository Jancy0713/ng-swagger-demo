swaggerDirName="swagger-service"
element="base"
cd scripts

rm -rf ../src/services/${swaggerDirName}/${element}
mkdir -p ../src/services/${swaggerDirName}/${element}
openapi-generator-cli generate \
  --additional-properties=enumPropertyNaming=original \
  -i rockBookServiceOpenapi.json \
  -g typescript-angular -o ../src/services/${swaggerDirName}/${element} \

cd ..
