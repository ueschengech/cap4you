const cds = require('@sap/cds');
//const {stringify} = require('querystring');
module.exports = cds.service.impl(async function(srv) {
    srv.on("printHelloWorld", req => {
        console.log(req.data.input);
        return `${req.data.input} World`;
    });
})