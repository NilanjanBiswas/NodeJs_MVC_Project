var express 	= require('express');
var userModel 	= require.main.require('./models/user');
var router 		= express.Router();


router.get('/', function(req, res){
	res.render('login/index');
});

router.post('/', function(req, res){

	var user = {
		id: req.body.id,
		username: req.body.username,
		password: req.body.password,

	};

	userModel.validate(user, function(status){
		if(status){
			userModel.getUserByUsername(req.body.username,function(results)
			{
				req.session.username = user.username;
				req.session.id = user.id;

				if (results[0].type=="admin")
				{

					res.redirect('/home');
				}
				else if (results[0].type=="student")
				{
					//console.log('student controller');
					res.redirect('/student');

				}
				else if (results[0].type=="tutor")
				{
						res.redirect('/tutor');


				}
				else{
					res.send('user type not found!!');

				}
			});
		}
		else{
			res.send('invalid username/password');
		}
	});

});

module.exports = router;
