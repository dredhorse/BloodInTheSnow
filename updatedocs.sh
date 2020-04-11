#!/usr/bin/env bash

echo ""
echo "### Building gitpages website with GitBook... ###"
echo ""

gitbook build

echo ""
echo "### Syncing gitpages static website to docs/ directory... ###"
echo ""

rsync -rv --delete-before --exclude '.nojekyll' _book/ docs/

echo ""
echo "### Cleaning up GitBook build... ###"
echo ""

rm -rf _book/

