all: clean deploy

clean: ; middleman build --clean

deploy: ; middleman deploy --build-before
