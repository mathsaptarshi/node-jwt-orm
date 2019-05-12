const verifySignUp = require('./verifySignUp');
const authJwt = require('./verifyJwtToken');

module.exports = function(app) {

	const controller = require('../controller/controller.js');
	const cabcontroller = require('../controller/cabcontroller.js');
	const crewcontroller = require('../controller/crewcontroller.js');
	//User Authentication  
	app.post('/api/auth/signup', [verifySignUp.checkDuplicateUserNameOrEmail, verifySignUp.checkRolesExisted], controller.signup);	
	app.post('/api/auth/signin', controller.signin);

	// cab
	app.post('/api/cab/create', cabcontroller.createCab);
	app.get('/api/cab', cabcontroller.getAllCab);
	
	//crew
	app.post('/api/crew/create', crewcontroller.createCrew);
	app.get('/api/crew', crewcontroller.getAllCab);
	
	// app.get('/api/test/user', [authJwt.verifyToken], controller.userContent);
	app.get('/api/test/user', controller.userContent);
	
	app.get('/api/test/pm', [authJwt.verifyToken, authJwt.isPmOrAdmin], controller.managementBoard);
	
	app.get('/api/test/admin', [authJwt.verifyToken, authJwt.isAdmin], controller.adminBoard);
}