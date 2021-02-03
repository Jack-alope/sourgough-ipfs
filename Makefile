
#works for docker image hugo...aka alpine linux
all: things

things:
	apk add --update git nodejs npm make
	npm install --save request request-promise cheerio puppeteer
	mkdir themes
	git clone https://github.com/Jack-alope/sourgough-starter.git themes/sourgough-starter
	node static/js/scholar-stats.js
	
