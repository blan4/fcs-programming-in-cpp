all: build

server:
	hugo --i18n-warnings server

build: clean
	hugo

clean:
	rm -rf resources
	rm -rf public

deploy:
	git push origin source
