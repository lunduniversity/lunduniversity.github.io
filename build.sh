source src/krav/build.sh
source src/pgk/build.sh
pandoc -s --toc -c pandoc.css -B top.html --metadata title="Lund University Open Source Pages" src/index.md -o index.html
