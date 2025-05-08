source src/krav/build.sh
source src/pgk/build.sh
source src/bjornregnell/build.sh

pandoc -s --toc -c style.css -B top.html --metadata title="Lund University Open Source Pages" src/index.md -o index.html
