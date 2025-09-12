/*const cds = require('@sap/cds');
//const {stringify} = require('querystring');
module.exports = cds.service.impl(async function(srv) {
    srv.on("printHelloWorld", req => {
        console.log(req.data.input);
        return `${req.data.input} World`;
    });

    srv.on("addition", req=>{
        console.log(`Result: ${req.data.num1 + req.data.num2}`);
        return `Result: ${req.data.num1 + req.data.num2}`;
    })

    srv.on("getCar", req => {



        let cars = [
            {
                brand: 'BMW',
                model: 'M3',
                year: 2018,
                price: '25.000 USD',
                location: 'Germany'
            },
            {
                brand: 'BMW',
                model: 'M5',
                year: 2022,
                price: '55.000 USD',
                location: 'Germany'
            },
            {
                brand: 'Audi',
                model: 'RS3',
                year: 2024,
                price: '45.000 USD',
                location: 'Germany'
            },
            {
                brand: 'Audi',
                model: 'RS7',
                year: 2023,
                price: '85.000 USD',
                location: 'Germany'
            }
        ];
        console.log(cars[req.data.id]);
        return cars[req.data.id];        
    })
})*/