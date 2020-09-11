const http = require('http')

let data = {
     "pattern": [
      { "id": 1, "type": "tablet", "name": "Samsung" },
      { "id": 2, "type": "clock", "name": "Apple" },
      { "id": 3, "type": "smartphone", "name": "Philips" },
      { "id": 4, "type": "clock", "name": "Realme" }
     ]
}

const server = http.createServer((req, res) => {
    if (req.url === '/') {
        res.writeHead(200, {
            'Content-Type': 'application/json'
        })
        res.end(JSON.stringify(data))
        console.log(req.url)
    } else {
        res.writeHead(300, {
            'Content-Type': 'text/plain'
        })
        res.end('Error! Uncorrect request!')
        console.log(req.url)
    }
})

const port = 3000

server.listen(port, (err) => {
    if (err) console.error(err)
    console.log(`Server was started on localhost:${port}`)
})
