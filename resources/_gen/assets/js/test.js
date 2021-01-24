const https = require('https')

const options = {
  hostname: 'publons.com',
  path: '/api/v2/academic/publication/?academic=2977689',
  method: 'GET', 
  headers: {
      'Authorization': 'Token 2b75aa04ddaa255a6c89be3bfdaf7d99f104d87c'
  }

}

const req = https.request(options, res => {
  var dict = {};
  console.log(`statusCode: ${res.statusCode}`)
  let output = ''
  res.on('data', d => {
        output += d
        let o = JSON.parse(output)
        console.log(o.results.length)
        for (i=0; i<o.results.length; i++) {
            newDict = {
                "title" : o.results[i].publication.title,
                "publon_id" : o.results[i].publication.ids.id,
                "pmid" : o.results[i].publication.ids.pmid,
                "doi" : o.results[i].publication.ids.doi, 
                "journal" : o.results[i].journal.name  
            };
            dict[i] = newDict;
        }
        console.log(dict)

    //process.stdout.write(d)
  })
})

req.on('error', error => {
  console.error(error)
})

req.end()