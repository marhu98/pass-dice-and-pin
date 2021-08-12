build:
	cd rint && cargo build --quiet --release
	cd rdice && cargo build --quiet --release
install:
	make build
	cp rdice/target/release/rdice .
	cp rint/target/release/rint .
