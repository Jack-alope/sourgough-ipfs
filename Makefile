
#ubuntu
all: things

things:
	apt-get update
	apt-get install curl
	curl -sL https://deb.nodesource.com/setup_6.x | bash -
	apt-get install -y nodejs
	apt-get install -y npm
	npm install --save request request-promise cheerio puppeteer
	mkdir themes
	rm -f data/citation_stats.json
	git clone https://github.com/Jack-alope/sourgough-starter.git themes/sourgough-starter
	node static/js/scholar-stats.js
	cat data/citation_stats.json
	
