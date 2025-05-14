#!/usr/bin/bash
echo "Building Lund University Open Source Pages"
source src/krav/build.sh
source src/pgk/build.sh
source src/bjornregnell/build.sh

pandoc -s --toc -c style.css -B top.html --metadata title="Lund University Open Source Pages" src/index.md -o index.html

# Normalize all generated .html files to use Unix line endings
if command -v dos2unix >/dev/null 2>&1; then
    echo "Normalizing line endings"
    find . -name "*.html" -exec dos2unix {} \; 2>/dev/null
else
    echo "Warning: dos2unix not found. Skipping line ending normalization."
fi

echo "Done"
