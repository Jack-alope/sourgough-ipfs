
#ubuntu
all: things

things:
	apt-get update
	apt install curl
	curl -sL https://deb.nodesource.com/setup_6.x | bash -
	apt-get install -y nodejs
	apt-get install -y npm
	npm install --save request request-promise cheerio puppeteer
	mkdir themes
	git clone https://github.com/Jack-alope/sourgough-starter.git themes/sourgough-starter
	node static/js/scholar-stats.js
	
