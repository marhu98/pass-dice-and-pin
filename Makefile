build:
	cp -r wordlist.txt /etc/.
	cd rint && cargo build --quiet --release
	cd rdice && cargo build --quiet --release
install:
	make build
	cp -r rdice/target/release/rdice /opt/local/bin/.
	cp -r rint/target/release/rint /opt/local/bin/.
	#mkdir ~/.password-store/.extensions
	cp -r dice.bash ~/.password-store/.extensions/.
	cp -r rint.bash ~/.password-store/.extensions/.
