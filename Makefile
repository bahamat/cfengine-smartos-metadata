.PHONY: all install clean test

all: test install

install:
	@cf-agent -KI -f ./module.cf -D install

test:
	@./mdata.sh
	@cf-agent -KI -f ./module.cf -D test

clean:
	@cf-agent -KI -f ./module.cf -D clean
