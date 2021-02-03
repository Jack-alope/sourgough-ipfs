all: npms themes nodes

update:
	npm install --save request request-promise cheerio puppeteer

themes:
    mkdir themes
    git clone https://github.com/Jack-alope/sourgough-starter.git themes/sourgough-starter

nodes:
    node static/js/scholar-stats.js
