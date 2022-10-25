install:
	chmod +x ./ytsearch
	cp ./ytsearch /usr/local/bin/
	cp ./ytsearch.1 /usr/local/share/man/man1/
	mandb

install_user:
	chmod +x ./ytsearch
	cp ./ytsearch ~/.local/bin/
