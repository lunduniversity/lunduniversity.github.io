mkdir -p bjornregnell
pandoc -s --toc -c ../style.css -B top.html --metadata title="Professor Björn Regnell" src/bjornregnell/index.md -o bjornregnell/index.html
