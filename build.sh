#!/bin/sh

BUILD_ACTION="${1:-deploy}"

if [ "${BUILD_ACTION}" == "deploy" ]; then

# 1 - Clean
mkdir _book > /dev/null
rm -f _book/README.md.time

# 2 - Build
gitbook build . --log=debug

# 3 - Sync (Please configure authorized_keys before this step)
rsync -avz --progress _book/ root@106.14.93.80::www

# 4 - CDN
# aliyuncli cdn RefreshObjectCaches --ObjectPath https://kb.xxtouch.com/

elif [ "${BUILD_ACTION}" == "preview" ]; then

# 1 - Clean
mkdir _book > /dev/null
rm -f _book/README.md.time

# 2 - Preview
gitbook serve . --log=debug

elif [ "${BUILD_ACTION}" == "clean" ]; then

rm -rf _book

fi
