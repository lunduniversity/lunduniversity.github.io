mkdir -p krav
pandoc -s --toc -c ../style.css -B top.html --metadata title="ETSN15 Software Requirements Engineering" src/krav/index.md -o krav/index.html
