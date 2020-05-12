all:	README.md README1.md README2.md 





README.md:
	touch README.md
	echo "# My first assignment in github " >> README.md
	echo " <br/>" >> README.md



README1.md:
	echo "<br/>" >> README.md
	history >> README.md
	echo "<br/>" >> README.md



README2.md:
	echo "<br/>" >> README.md
	wc -l guessing_games.sh >> README.md
