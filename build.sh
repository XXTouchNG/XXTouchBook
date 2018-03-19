#!/bin/sh

BUILD_ACTION="${1:-deploy}"



if [ "${BUILD_ACTION}" == "deploy" ]; then

# 1 - Clean
echo "Clean caches..."
mkdir _book > /dev/null
rm -f _book/README.md.time

# 2 - Build
echo "Build book..."
gitbook build . --log=debug

# 3 - Site Map
echo "Build sitemap..."
NODE_COUNT=`xmllint --xpath "count(/*[local-name()='urlset']/*[local-name()='url'])" _book/sitemap.xml`
NODE_LIST=""
for ((i=1;i<=$[NODE_COUNT];i++));
do
NODE_URL=`xmllint --xpath "/*[local-name()='urlset']/*[local-name()='url'][${i}]/*[local-name()='loc']/text()" _book/sitemap.xml`
NODE_LIST="${NODE_LIST}\n${NODE_URL}"
done
echo $NODE_LIST > sitemap.txt

# 4 - Sync (Please configure authorized_keys before this step)
echo "Sync to server..."
rsync -avz --progress _book/ root@${XXT_BOOK_IP}:/home/www

fi



if [ "${BUILD_ACTION}" == "preview" ]; then

# 1 - Clean
echo "Clean caches..."
mkdir _book > /dev/null
rm -f _book/README.md.time

# 2 - Preview
echo "Build book..."
gitbook serve . --log=debug

fi



if [ "${BUILD_ACTION}" == "clean" ]; then

# 1 - Clean
echo "Clean caches..."
rm -rf _book

fi



if [ "${BUILD_ACTION}" == "install" ]; then

echo "Apply patches..."
cp -p "./.gitbook_resources/expandable-chapters.js" "./node_modules/gitbook-plugin-expandable-chapters/book/"
cp -p "./.gitbook_resources/generateBook.js" "$HOME/.gitbook/versions/3.2.3/lib/output/"
cp -p "./.gitbook_resources/onPage.js" "$HOME/.gitbook/versions/3.2.3/lib/output/website/"

fi



echo "Done."
