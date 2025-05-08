mkdir -p pgk
pandoc -s --toc -c ../style.css -B top.html --metadata title="EDAB05 Introduktion till programmering" src/pgk/index.md -o pgk/index.html
