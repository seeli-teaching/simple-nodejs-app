"use strict";

const http = require("http");
// Module to read environment variables
const { processenv } = require("processenv");

const message = processenv("MESSAGE", "Hello World!");

const server = http.createServer((req, res) => {
  res.writeHead(200, { "Content-Type": "text/html" });
  res.end("<h1>" + message + "</h1>");
});

server.listen(3000, () => {
  console.log("Node server created at port 3000");
});
