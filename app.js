var http = require("http");
require('dotenv-flow').config({ default_node_env: '{{NODE_ENV}}' });

console.log(process.env.value);
console.log(process.env.key);
console.log(process.env.pair);

http.createServer(function (request, response) {
    response.writeHead(200, { 'Content-Type': 'text/plain' });
    response.end("Result will be visible in the console." + process.env.value + "," + process.env.key + "," + process.env.pair);
}).listen(3000);



