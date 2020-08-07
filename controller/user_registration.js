var express = require('express');
var userModel = require.main.require('./models/user');
var router = express.Router();
router.get('/create_user', function(req, res){
	res.render('login/user_registration');
	
});

//  router.post('/create_users', function(req, res){
	
	
// 		var user =
// 		{
// 			username 	: req.body.username,
// 			password	: req.body.password,
// 			email       :req.body.email,
// 			type		: req.body.type
// 		}

// 		userModel.insert(user, function(status)
// 		{
// 			// if(status)
// 			// {
// 			// 	res.redirect('/home/view_users');
// 			// }
// 			// else
// 			// {
// 			// 	res.redirect('/home/create');
// 			// }
// 		});
	
// });
module.exports = router;