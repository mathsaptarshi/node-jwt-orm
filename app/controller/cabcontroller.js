const db = require('../config/db.config.js');
const config = require('../config/config.js');
const Cab = db.cab;

// const Op = db.Sequelize.Op;

// var jwt = require('jsonwebtoken');
// var bcrypt = require('bcryptjs');


exports.createCab = (req, res) => {	
	// Save Cab to Database
	console.log("Processing func -> createcab");
	Cab.create({
		regno: req.body.regno,
        company: req.body.company,
        model: req.body.model,
        type: req.body.type,
        state: req.body.state,
        district: req.body.district,
        postalcode: req.body.postalcode,        
	})
	.then(() => {
		res.send("Cab registered successfully!");
    })		
	.catch(err => {
		res.status(500).send("Error -> " + err);
	})
}

exports.getAllCab = (req, res) => {	
	Cab.findAll()
	.then(cabs => {
		res.status(200).json({
			"description": "Cab Details Page",
			"cabs": cabs
		});
	})	
	.catch(err => {
		res.status(500).send("Error -> " + err);
	})
}