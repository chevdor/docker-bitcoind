YOUR_USER=chevdor
SOME_VERSION=25.0

docker build -t $YOUR_USER/bitcoind:$SOME_VERSION \
   --build-arg UID=1039 \
   --build-arg GID=65544 \
   --build-arg VERSION=$SOME_VERSION \
   --build-arg SOURCE=release \
   .

docker push $YOUR_USER/bitcoind:$SOME_VERSION
