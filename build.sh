#!/bin/sh

BUILD_ACTION="${1:-deploy}"

if [ "${BUILD_ACTION}" == "deploy" ]; then

# 1 - Clean
mkdir _book > /dev/null
rm -f _book/README.md.time

# 2 - Build
gitbook build . --log=debug

# 3 - Sync (Please configure authorized_keys before this step)
rsync -avz --progress _book/ root@${XXT_BOOK_IP}:/home/www

elif [ "${BUILD_ACTION}" == "sitemap" ]; then

NODE_COUNT=`xmllint --xpath "count(/*[local-name()='urlset']/*[local-name()='url'])" _book/sitemap.xml`
NODE_LIST=""
for ((i=1;i<=$[NODE_COUNT];i++));
do
NODE_URL=`xmllint --xpath "/*[local-name()='urlset']/*[local-name()='url'][${i}]/*[local-name()='loc']/text()" _book/sitemap.xml`
NODE_LIST="${NODE_LIST}\n${NODE_URL}"
done

echo $NODE_LIST > sitemap.txt

elif [ "${BUILD_ACTION}" == "preview" ]; then

# 1 - Clean
mkdir _book > /dev/null
rm -f _book/README.md.time

# 2 - Preview
gitbook serve . --log=debug

elif [ "${BUILD_ACTION}" == "clean" ]; then

rm -rf _book

elif [ "${BUILD_ACTION}" == "install" ]; then

cp -p "./.gitbook_resources/expandable-chapters.js" "./node_modules/gitbook-plugin-expandable-chapters/book/"
cp -p "./.gitbook_resources/generateBook.js" "$HOME/.gitbook/versions/3.2.3/lib/output/"
cp -p "./.gitbook_resources/onPage.js" "$HOME/.gitbook/versions/3.2.3/lib/output/website/"

fi

echo "Done."
